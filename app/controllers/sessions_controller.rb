class SessionsController < ApplicationController

  def create
    person = Person.find_by_name(params[:name])
    if person.present? && person.authenticate(params[:password])
      session[:person_id] = person.id
      redirect_to root_url, notice: "Welcome back, #{person.name}"
      return
    end
    redirect_to sign_in_url, notice: "Nice try!"
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "See ya!"
  end

end
