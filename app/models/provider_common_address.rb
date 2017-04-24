class ProviderCommonAddress < Address

  #validates :provider, presence: true

  def self.load_addresses(filename, provider) 
    require 'csv'
    require 'open-uri'
    alert_msgs = []
    Rails.logger.info "Loading common address from file '#{filename}'"
    Rails.logger.info "Starting at: #{Time.current}"

    count_good = 0
    count_bad = 0
    count_failed = 0
    count_possible_existing = 0

    if !provider
      Rails.logger.info "Provider is nil..."
    else
      provider.address_upload_flag.uploading!

      open(filename) do |f|
        CSV.new(f, {:col_sep => ",", :headers => true}).each do |row|
          # address_type_name = row[9] # TODO: whether to add POI_TYPE into Ridepilot
          address_name = row[2]
          address_city = row[6]
          #If we have already created this common address, don't create it again.
          if Address.exists?(name: address_name, city: address_city)
            #Rails.logger.info "Possible duplicate: #{row}"
            count_possible_existing += 1
            next
          end
          begin
            if address_name
              p = ProviderCommonAddress.create!({
                provider: provider,
                the_geom: RGeo::Geographic.spherical_factory(srid: 4326).point(row[0].to_f, row[1].to_f),
                name: address_name,
                building_name: row[3],
                address: row[4].to_s + row[5].to_s,
                city: address_city,
                state: row[7],
                zip: row[8],
                trip_purpose: row[11].to_s.blank? ? nil : TripPurpose.find_by_name(row[11].to_s),
                notes: row[12]
              })
              count_good += 1
            else
              count_bad += 1
            end
          rescue Exception => e
            #Rails.logger.info "Failed to save: #{e.message} for #{p.ai}"
            count_failed += 1
          end
        end
      end
    end

    Rails.logger.info "Common address loading finished"
    provider.address_upload_flag.uploaded!

    sub_pairs = {
      count_good: count_good,
      count_failed: count_failed,
      count_bad: count_bad,
      count_possible_existing: count_possible_existing
    }

    summary_info = TranslationEngine.translate_text(:common_address_upload_summary) % sub_pairs
    provider.address_upload_flag.last_upload_summary = summary_info
    provider.address_upload_flag.save

    Rails.logger.info summary_info
    summary_info
  end
end