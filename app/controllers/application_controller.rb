class ApplicationController < ActionController::API
  def home
    render :json => { name: "ediand-backend!!" }
  end
end
