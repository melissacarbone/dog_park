class Dog < ActiveRecord::Base
  validates :name, :format => { :with => /[a-zA-Z]+/}

end
