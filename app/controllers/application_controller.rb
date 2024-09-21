class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  helper_method :current_wallet

  def current_wallet
    wallet_id = session[:current_wallet_id]

    if wallet_id.nil?
      @current_wallet = current_user.wallets.first
    else
      @current_wallet = current_user.wallets.find_by(id: wallet_id)
    end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [ :name ])
    end
end
