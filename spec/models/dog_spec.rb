require 'spec_helper'

describe Dog do
  it { should have_valid(:name).when('Chunky', 'Bacon') }
  it { should_not have_valid(:name).when(' ', nil, 123) }

  it { should have_many(:owners) }

  it 'can have more than one owner' do

    owners = FactoryGirl.create_list(:owner, 3)
    dog = FactoryGirl.create(:dog)

     owners.each do |owner|
     FactoryGirl.create(:dog_owner, owner: owner, dog: dog)
    end

    owners.each do |owner|
    expect(dog.owners.include?(owner)).to be_true
    end
  end

end
