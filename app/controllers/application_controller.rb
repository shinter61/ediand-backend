class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  def home
    render :json => { name: "ediand-backend!!" }
  end
end
