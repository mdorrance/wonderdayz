class SessionsController < ApplicationController

  def create
    person = Person.find_by_email(params[:email])
    if person.present? && person.authenticate(params[:password])
      session[:person_id] = person.id
      redirect_to '/people/:id', notice: "Welcome back, #{person.email}"
      return
    end
    redirect_to sign_in_url, notice: "Nice try!"
  end

  def destroy
    reset_session
    redirect_to sign_in_url, notice: "See ya!"
  end

end
