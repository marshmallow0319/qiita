class Article < ActiveRecord::Base

  belongs_to :user
  has_many :stocks, dependent: :destroy

  def stocked_user?(user)
   stocks.find_by(user_id: user)
  end

end
