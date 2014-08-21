class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      


      #sign user in and redirect to user's page 
    else
      flash[:error] = 'Invalid email/password combination'
      render 'new'
      #Create an error message and re-render the signin form.
    end
  end

  def destroy
  end


end
