require 'spec_helper'

describe Dog do
  it { should have_valid(:name).when('Chunky', 'Bacon') }
  it { should_not have_valid(:name).when(' ', nil, 123) }

  it { should have_many(:owners) }

end
