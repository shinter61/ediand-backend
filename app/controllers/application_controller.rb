class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  def home
    render :json => { name: User.all, login: user_signed_in? }
  end
end
