class PersonAwardsController < ApplicationController
  # GET /person_awards
  # GET /person_awards.json
  def index
    @person_awards = PersonAward.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @person_awards }
    end
  end

  # GET /person_awards/1
  # GET /person_awards/1.json
  def show
    @person_award = PersonAward.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person_award }
    end
  end

  # GET /person_awards/new
  # GET /person_awards/new.json
  def new
    @person_award = PersonAward.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @person_award }
    end
  end

  # GET /person_awards/1/edit
  def edit
    @person_award = PersonAward.find(params[:id])
  end

  # POST /person_awards
  # POST /person_awards.json
  def create
    @person_award = PersonAward.new(params[:person_award])

    respond_to do |format|
      if @person_award.save
        format.html { redirect_to @person_award, notice: 'Person award was successfully created.' }
        format.json { render json: @person_award, status: :created, location: @person_award }
      else
        format.html { render action: "new" }
        format.json { render json: @person_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /person_awards/1
  # PUT /person_awards/1.json
  def update
    @person_award = PersonAward.find(params[:id])

    respond_to do |format|
      if @person_award.update_attributes(params[:person_award])
        format.html { redirect_to @person_award, notice: 'Person award was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @person_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_awards/1
  # DELETE /person_awards/1.json
  def destroy
    @person_award = PersonAward.find(params[:id])
    @person_award.destroy

    respond_to do |format|
      format.html { redirect_to person_awards_url }
      format.json { head :no_content }
    end
  end
end
