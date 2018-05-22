class AddProviderIdToFundingSources < ActiveRecord::Migration[5.1]
  def change
    add_reference :funding_sources, :provider, index: true
  end
end
