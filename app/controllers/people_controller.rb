class PeopleController < ApplicationController

  skip_before_filter :require_login, :only => [:new, :create]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @people }
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show

    # if Person.find_by_id(params[:id]) != nil
    @person = Person.find_by_id(params[:id])
    @adventures = Adventure.where(:family_id => @person.family_id)
    @activity = params[:activity]
    @filtered_activities = Activity.where(:name => @activity)
    @age = params[:age]

    zap = Array.new
    Activity.all.each do |zip|
      zap << zip.name
    end

    more_zap = Array.new

    @adventures.each do |adventure|
       more_zap << adventure.activity.name
    end

    zippy = Array.new
    @zippy = zap - more_zap




    # else
    #   redirect_to sign_in_url
    # end

    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @person }
    # end
  end

  # GET /people/new
  # GET /people/new.json
  def new
    @person = Person.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @person }
    end
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(params[:person])

    respond_to do |format|
      if @person.save
      session[:person_id] = @person.id



        if session[:source] != 'Family'
        f=Family.new
        f.tribe_name=@person.family_name
        f.save
        @person.update_attribute(:family_id, f.id)
        else
        end
        session.delete(:source)

        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render json: @person, status: :created, location: @person }
      else
        format.html { render action: "new" }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @person = Person.find(params[:id])

    respond_to do |format|
      if @person.update_attributes(params[:person])
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
    end
  end
end
