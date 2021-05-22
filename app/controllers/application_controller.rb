class ApplicationController < ActionController::Base
  include Pundit

  def pundit_user
    current_account
  end

  rescue_from Pundit::NotAuthorizedError, with:  :account_not_authorized

  def account_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
