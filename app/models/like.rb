class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  def likeed_user?(user)
   likes.find_by(user_id: user)
  end
end
