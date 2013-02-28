class SashesController < ApplicationController
  # GET /sashes
  # GET /sashes.json
  def index
    @sashes = Sash.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sashes }
    end
  end

  # GET /sashes/1
  # GET /sashes/1.json
  def show
    @sash = Sash.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sash }
    end
  end

  # GET /sashes/new
  # GET /sashes/new.json
  def new
    @sash = Sash.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sash }
    end
  end

  # GET /sashes/1/edit
  def edit
    @sash = Sash.find(params[:id])
  end

  # POST /sashes
  # POST /sashes.json
  def create
    @sash = Sash.new(params[:sash])

    respond_to do |format|
      if @sash.save
        format.html { redirect_to @sash, notice: 'Sash was successfully created.' }
        format.json { render json: @sash, status: :created, location: @sash }
      else
        format.html { render action: "new" }
        format.json { render json: @sash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sashes/1
  # PUT /sashes/1.json
  def update
    @sash = Sash.find(params[:id])

    respond_to do |format|
      if @sash.update_attributes(params[:sash])
        format.html { redirect_to @sash, notice: 'Sash was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sashes/1
  # DELETE /sashes/1.json
  def destroy
    @sash = Sash.find(params[:id])
    @sash.destroy

    respond_to do |format|
      format.html { redirect_to sashes_url }
      format.json { head :no_content }
    end
  end
end
