# frozen_string_literal: true

require 'new_dawn/vehicles/services/purchase_vehicle'

RSpec.describe NewDawn::Vehicles::Services::PurchaseVehicle do
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

    expect(results.map(&:payload)).to match(
      [
        event: NewDawn::Vehicles::Events::VehiclePurchased
      ]
    )
  end

  it 'returns newly created vehicle' do
    expect(purchase_vehicle).to be_a(
      NewDawn::Vehicles::Entities::Vehicle
    )
  end
end
