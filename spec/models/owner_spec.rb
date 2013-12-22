require 'spec_helper'

describe Owner do
  it { should have_many(:dogs).through(:dog_owners) }

  it { should have_valid(:first_name).when('Melissa', 'Alex') }
  it { should_not have_valid(:first_name).when(' ', nil, 123)}

  it { should have_valid(:last_name).when('Smith', 'Jones') }
  it { should_not have_valid(:last_name).when(' ', nil, 123)}

  it { should have_valid(:email).when('mcarbone@gmail.com', 'test123@test.io') }
  it { should_not have_valid(:email).when(nil, 'fail', 123) }

end
