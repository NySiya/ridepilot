require 'rails_helper'

RSpec.describe RecurringDriverCompliance, type: :model do
  it_behaves_like "a recurring compliance event scheduler" do
    before do
      # These options reflect the concern setup method:
      #   creates_occurrences_for :driver_compliances, on: :drivers
      @occurrence_association = :driver_compliances
      @occurrence_owner_association = :drivers
    end
  end

  it "requires a recurrence_schedule" do
    recurrence = build :recurring_driver_compliance, recurrence_schedule: nil
    expect(recurrence.valid?).to be_falsey
    expect(recurrence.errors.keys).to include :recurrence_schedule
  end

  it "requires a numeric recurrence_frequency" do
    recurrence = build :recurring_driver_compliance, recurrence_frequency: nil
    expect(recurrence.valid?).to be_falsey
    expect(recurrence.errors.keys).to include :recurrence_frequency
  end
end
