require 'rails_helper'

RSpec.describe User, type: :model do
  before (:each) do
    @user = create(:user)
  end

  context '#create' do
    it 'adds an email address' do
      expect(User.all.last.email).to eq @user.email
    end

    it 'adds a first name' do
      expect(User.all.last.firstname).to eq @user.firstname
    end

    it 'adds a last name' do
      expect(User.all.last.lastname).to eq @user.lastname
    end
  end
end
