class SessionsController < ApplicationController

    skip_before_filter :require_login, :only => [:new, :create]


  def create
    person = Person.find_by_email(params[:email])
    if person.present? && person.authenticate(params[:password])
      session[:person_id] = person.id
      redirect_to person_path(session[:person_id]), notice: "Welcome back, #{person.email}"
      return
    end
    redirect_to sign_in_url, notice: "Nice try!"
  end

  def new
    @person = Person.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end




  def destroy
    reset_session
    redirect_to sign_in_url, notice: "See ya!"
  end

end
