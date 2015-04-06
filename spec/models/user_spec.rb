require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'should create user with default information' do
    user = FactoryGirl.create(:user)
    expect(user.class).to eq(User)
  end

  it 'should create user with custom information' do
    user = FactoryGirl.create(:user, first_name: "Emrana", last_name: "kabir", email: "hashi@gmail.com")
    expect(user.first_name).to eq("Emrana")
    expect(user.last_name).to eq("kabir")
    expect(user.name).to eq("Emrana kabir")
    expect(user.email).to eq("hashi@gmail.com")
  end

  it 'should not create user without first name' do
    expect { FactoryGirl.create(:invalid_user, last_name: "kabir", email: "hashi@gmail.com") }.to raise_error("Validation failed: First name can't be blank")
  end

  it 'should not create user without valid email' do
    expect { FactoryGirl.create(:invalid_user, first_name: "Emrana", last_name: "kabir", email: "gmail.com") }.to raise_error("Validation failed: Email is invalid")
  end

end
