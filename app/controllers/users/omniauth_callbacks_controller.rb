class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  # include Devise::Controllers::Rememberable

  def twitter
    callback_from :twitter
  end

  def github
    callback_from :github
  end

  private
  def callback_from(provider)
    provider = provider.to_s

    @user = User.find_for_oauth(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      sign_in_and_redirect @user, event: :authentication
    else
      unless provider == 'twitter'
        session["devise.#{provider}_data"] = request.env['omniauth.auth']
      else
        session["devise.twitter_data"] = request.env["omniauth.auth"].except("extra")
      end
      redirect_to new_user_registration_url
    end
  end
end
