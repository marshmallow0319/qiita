class Article < ActiveRecord::Base

  belongs_to :user
  has_many :stocks, dependent: :destroy
  has_many :likes, dependent: :destroy

  def stocked_user?(user)
   stocks.find_by(user_id: user)
  end

  def liked_user?(user)
   likes.find_by(user_id: user)
  end

end
