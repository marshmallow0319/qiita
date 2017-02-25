class Liker < ActiveRecord::Base

  has_many :likes
  belongs_to :article

end
