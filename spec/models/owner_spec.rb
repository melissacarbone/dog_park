require 'spec_helper'

describe Owner do
  it { should have_many(:dogs).through(:dog_owners) }

  it { should have_valid(:first_name).when('Melissa', 'Alex') }
  it { should_not have_valid(:first_name).when(' ', nil, 123)}

  it { should have_valid(:last_name).when('Smith', 'Jones') }
  it { should_not have_valid(:last_name).when(' ', nil, 123)}

  it { should have_valid(:email).when('mcarbone@gmail.com', 'test123@test.io') }
  it { should_not have_valid(:email).when(nil, 'fail', 123) }

   it 'can have more than one dog' do

    dogs = FactoryGirl.create_list(:dog, 5)
    owner = FactoryGirl.create(:owner)

     dogs.each do |dog|
     FactoryGirl.create(:dog_owner, owner: owner, dog: dog)
    end

    dogs.each do |dog|
    expect(owner.dogs.include?(dog)).to be_true
    end
  end

end
