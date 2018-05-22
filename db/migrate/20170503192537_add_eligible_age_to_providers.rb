class AddEligibleAgeToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :eligible_age, :integer
  end
end
