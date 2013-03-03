class AddmemberController < ApplicationController

def new
  session[:id] = Person.new.family_id
  @person = Person.find(session[:person_id])
end

def create
  @person = Person.new(:email =>params[:email])
  AddmembersMailer.invite(@person).deliver
  redirect_to person_path(session[:person_id])
end

def confirm

end


end
