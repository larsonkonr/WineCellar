class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    if user
      session[:user_id] = user.id
      redirect_to cellar_index_path, :notice => "Signed in!"
    else
      redirect_to root_url, :notice => "Nope try again!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
