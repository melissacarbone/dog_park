class Owner < ActiveRecord::Base
  has_many :dog_owners
  has_many :dogs, through: :dog_owners

  validates :first_name, :format => { :with => /[a-zA-Z]+/}
  validates :last_name, :format => { :with => /[a-zA-Z]+/}

  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
end
