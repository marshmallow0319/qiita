class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update]

  def show
  end

  def edit
  end

  def update
    if @user.update(update_params)
      bypass_sign_in @user
      redirect_to edit_user_path(current_user)
    else
      render :edit
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def update_params
    params.require(:user).permit(:id, :username, :email, :email_checked, :password, :firstname, :lastname, :website, :company, :residence, :profile, :facebook_id, :linkedin_id, :google_plus_id, :avatar)
  end
end
