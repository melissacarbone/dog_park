class Dog < ActiveRecord::Base
  validates :name, :format => { :with => /[a-zA-Z]+/}

  has_many :dog_owners
  has_many :owners, through: :dog_owners

end
