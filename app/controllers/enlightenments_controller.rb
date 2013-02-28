class EnlightenmentsController < ApplicationController
  # GET /enlightenments
  # GET /enlightenments.json
  def index
    @enlightenments = Enlightenment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enlightenments }
    end
  end

  # GET /enlightenments/1
  # GET /enlightenments/1.json
  def show
    @enlightenment = Enlightenment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enlightenment }
    end
  end

  # GET /enlightenments/new
  # GET /enlightenments/new.json
  def new
    @enlightenment = Enlightenment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enlightenment }
    end
  end

  # GET /enlightenments/1/edit
  def edit
    @enlightenment = Enlightenment.find(params[:id])
  end

  # POST /enlightenments
  # POST /enlightenments.json
  def create
    @enlightenment = Enlightenment.new(params[:enlightenment])

    respond_to do |format|
      if @enlightenment.save
        format.html { redirect_to @enlightenment, notice: 'Enlightenment was successfully created.' }
        format.json { render json: @enlightenment, status: :created, location: @enlightenment }
      else
        format.html { render action: "new" }
        format.json { render json: @enlightenment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enlightenments/1
  # PUT /enlightenments/1.json
  def update
    @enlightenment = Enlightenment.find(params[:id])

    respond_to do |format|
      if @enlightenment.update_attributes(params[:enlightenment])
        format.html { redirect_to @enlightenment, notice: 'Enlightenment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enlightenment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enlightenments/1
  # DELETE /enlightenments/1.json
  def destroy
    @enlightenment = Enlightenment.find(params[:id])
    @enlightenment.destroy

    respond_to do |format|
      format.html { redirect_to enlightenments_url }
      format.json { head :no_content }
    end
  end
end
