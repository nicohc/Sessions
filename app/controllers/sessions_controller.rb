class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Mauvaise combinaison email/mot de passe'
      render 'new'
    end
  end

  def index
  end
  def skipp
  end


  def destroy
    log_out
    redirect_to root_url
  end

end
