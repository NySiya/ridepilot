class RenameComplianceDateBasedSchedulingOnRecurringDriverCompliance < ActiveRecord::Migration[5.1]
  def change
    rename_column :recurring_driver_compliances, :compliance_date_based_scheduling, :compliance_based_scheduling
  end
end