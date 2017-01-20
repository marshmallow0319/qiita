class Stock < ActiveRecord::Base

  has_many :users
  has_many :articles

end
