class ApplicationController < ActionController::Base
  protect_from_forgery

before_filter :require_login

  private
 
  def require_login
    unless logged_in?
      flash[:alert] = "You must be logged in to access this section"
      redirect_to root_url # halts request cycle
    end
  end
 
  # The logged_in? method simply returns true if the user is logged
  # in and false otherwise. It does this by "booleanizing" the
  # current_user method we created previously using a double ! operator.
  # Note that this is not common in Ruby and is discouraged unless you
  # really mean to convert something into true or false.
  def logged_in?
    !!current_user
  end
	

	def current_user
  		@current_user ||= Person.find(session[:person_id]) if session[:person_id]
	end


  helper_method :current_user

end
