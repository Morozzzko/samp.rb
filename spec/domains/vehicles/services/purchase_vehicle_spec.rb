# frozen_string_literal: true

RSpec.describe Vehicles::Services::PurchaseVehicle do
  subject(:purchase_vehicle) { described_class.new.call }

  let(:results) { [] }

  let(:event_handler) do
    lambda do |event|
      results << event
    end
  end

  before do
    event_bus.subscribe('vehicles.purchased', &event_handler)
  end

  it 'triggers "vehicles.purchased" with id: 1' do
    purchase_vehicle

    expect(results).not_to be_empty
  end

  it 'works' do
    expect(purchase_vehicle).to be_a(
      Vehicles::Entities::Vehicle
    )
  end
end