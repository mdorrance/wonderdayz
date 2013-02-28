class PersonAvatarsController < ApplicationController
  # GET /person_avatars
  # GET /person_avatars.json
  def index
    @person_avatars = PersonAvatar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @person_avatars }
    end
  end

  # GET /person_avatars/1
  # GET /person_avatars/1.json
  def show
    @person_avatar = PersonAvatar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person_avatar }
    end
  end

  # GET /person_avatars/new
  # GET /person_avatars/new.json
  def new
    @person_avatar = PersonAvatar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @person_avatar }
    end
  end

  # GET /person_avatars/1/edit
  def edit
    @person_avatar = PersonAvatar.find(params[:id])
  end

  # POST /person_avatars
  # POST /person_avatars.json
  def create
    @person_avatar = PersonAvatar.new(params[:person_avatar])

    respond_to do |format|
      if @person_avatar.save
        format.html { redirect_to @person_avatar, notice: 'Person avatar was successfully created.' }
        format.json { render json: @person_avatar, status: :created, location: @person_avatar }
      else
        format.html { render action: "new" }
        format.json { render json: @person_avatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /person_avatars/1
  # PUT /person_avatars/1.json
  def update
    @person_avatar = PersonAvatar.find(params[:id])

    respond_to do |format|
      if @person_avatar.update_attributes(params[:person_avatar])
        format.html { redirect_to @person_avatar, notice: 'Person avatar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @person_avatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_avatars/1
  # DELETE /person_avatars/1.json
  def destroy
    @person_avatar = PersonAvatar.find(params[:id])
    @person_avatar.destroy

    respond_to do |format|
      format.html { redirect_to person_avatars_url }
      format.json { head :no_content }
    end
  end
end
