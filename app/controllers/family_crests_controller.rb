class FamilyCrestsController < ApplicationController
  # GET /family_crests
  # GET /family_crests.json
  def index
    @family_crests = FamilyCrest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @family_crests }
    end
  end

  # GET /family_crests/1
  # GET /family_crests/1.json
  def show
    @family_crest = FamilyCrest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family_crest }
    end
  end

  # GET /family_crests/new
  # GET /family_crests/new.json
  def new
    @family_crest = FamilyCrest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family_crest }
    end
  end

  # GET /family_crests/1/edit
  def edit
    @family_crest = FamilyCrest.find(params[:id])
  end

  # POST /family_crests
  # POST /family_crests.json
  def create
    @family_crest = FamilyCrest.new(params[:family_crest])

    respond_to do |format|
      if @family_crest.save
        format.html { redirect_to @family_crest, notice: 'Family crest was successfully created.' }
        format.json { render json: @family_crest, status: :created, location: @family_crest }
      else
        format.html { render action: "new" }
        format.json { render json: @family_crest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /family_crests/1
  # PUT /family_crests/1.json
  def update
    @family_crest = FamilyCrest.find(params[:id])

    respond_to do |format|
      if @family_crest.update_attributes(params[:family_crest])
        format.html { redirect_to @family_crest, notice: 'Family crest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family_crest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_crests/1
  # DELETE /family_crests/1.json
  def destroy
    @family_crest = FamilyCrest.find(params[:id])
    @family_crest.destroy

    respond_to do |format|
      format.html { redirect_to family_crests_url }
      format.json { head :no_content }
    end
  end
end
