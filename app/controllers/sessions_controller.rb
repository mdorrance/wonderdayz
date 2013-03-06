class SessionsController < ApplicationController

    skip_before_filter :require_login, :only => [:new, :create]

  def create
    person = Person.find_by_trail_name(params[:trail_name])
    if person.present? && person.authenticate(params[:password])
      session[:person_id] = person.id
      redirect_to person_path(session[:person_id]), notice: "Welcome back, #{person.trail_name}"
      return
    end
    redirect_to sign_in_url, notice: "We didn't recogize the trail name or password. Please try again."
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
