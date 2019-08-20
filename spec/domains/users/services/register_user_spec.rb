# frozen_string_literal: true

require 'users/services/register_user'

RSpec.describe NewDawn::Users::Services::RegisterUser do
  subject { container['users.services.register_user'].call(**params) }

  let(:params) do
    {
      username: username,
      email: email
    }
  end

  let(:username) { 'Hello there' }
  let(:email) { 'foo@bar.quux' }

  it 'creates user' do
    expect { subject }.to change {
      container['users.repositories.user_repo'].count
    }.from(0).to(1)
  end

  it 'returns user with matching username' do
    expect(subject).to eql(
      NewDawn::Users::Entities::User[
        username: username, email: email
      ]
    )
  end
end
