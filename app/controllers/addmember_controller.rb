class AddmemberController < ApplicationController

def new

end

def create
  @person = Person.new(:email =>params[:email])
  AddmembersMailer.invite(@person).deliver
  redirect_to person_path(session[:person_id])
end


end
