class CrestsController < ApplicationController
  # GET /crests
  # GET /crests.json
  def index
    @crests = Crest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crests }
    end
  end

  # GET /crests/1
  # GET /crests/1.json
  def show
    @crest = Crest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crest }
    end
  end

  # GET /crests/new
  # GET /crests/new.json
  def new
    @crest = Crest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crest }
    end
  end

  # GET /crests/1/edit
  def edit
    @crest = Crest.find(params[:id])
  end

  # POST /crests
  # POST /crests.json
  def create
    @crest = Crest.new(params[:crest])

    respond_to do |format|
      if @crest.save
        format.html { redirect_to @crest, notice: 'Crest was successfully created.' }
        format.json { render json: @crest, status: :created, location: @crest }
      else
        format.html { render action: "new" }
        format.json { render json: @crest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crests/1
  # PUT /crests/1.json
  def update
    @crest = Crest.find(params[:id])

    respond_to do |format|
      if @crest.update_attributes(params[:crest])
        format.html { redirect_to @crest, notice: 'Crest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crests/1
  # DELETE /crests/1.json
  def destroy
    @crest = Crest.find(params[:id])
    @crest.destroy

    respond_to do |format|
      format.html { redirect_to crests_url }
      format.json { head :no_content }
    end
  end
end
