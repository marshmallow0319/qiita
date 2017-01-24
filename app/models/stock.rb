class Stock < ActiveRecord::Base

  belongs_to :user
  belongs_to :article

  def stocked_user?(user)
   stocks.find_by(user_id: user)
  end

end
