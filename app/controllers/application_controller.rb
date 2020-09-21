class ApplicationController < ActionController::API
  def home
    render :json => { name: "ediand" }
  end
end
