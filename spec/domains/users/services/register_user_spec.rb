# frozen_string_literal: true

require 'new_dawn/users/services/register_user'

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

  context 'event emitter' do
    let(:event_handler) do
      double(:event_handler)
    end

    before do
      allow(event_handler).to receive(:on_users_registered).and_return(nil)
      event_bus.subscribe(event_handler)
    end

    it 'emits the UserRegistered event with payload' do
      expect(event_handler).to receive(
        :on_users_registered
      ).with(Dry::Events::Event.new(
               'users.registered',
               user: {
                 username: username,
                 email: email
               }
             ))

      subject
    end
  end
end
