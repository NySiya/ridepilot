class FundingSourceShownTo < ActiveRecord::Migration[5.1]
  def self.up
    create_table :funding_source_visibilities do |t|
      t.integer :funding_source_id
      t.integer :provider_id
    end
  end

  def self.down
    drop_table :funding_source_visibilities
  end
end
