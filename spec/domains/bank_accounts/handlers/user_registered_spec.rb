# frozen_string_literal: true

require 'bank_accounts/handlers/user_registered'

RSpec.describe NewDawn::BankAccounts::Handlers::UserRegistered, type: :handler do
  subject { described_class.new }

  it 'works' do
    expect do
      subject.call(123)
    end.not_to raise_exception
  end
end
