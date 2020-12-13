class V1::UsersController < ApplicationController
  def by_token
    if user_signed_in?
      render :json => { isLogedIn: user_signed_in?, user: current_user }
    else
      raise 'error'
      render :json => { isLogedIn: user_signed_in?, user: nil }
    end
  end
end
