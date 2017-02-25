class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  def liked_user?(user)
   likes.find_by(user_id: user)
  end
end
