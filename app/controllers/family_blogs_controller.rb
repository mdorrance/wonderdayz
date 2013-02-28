class FamilyBlogsController < ApplicationController
  # GET /family_blogs
  # GET /family_blogs.json
  def index
    @family_blogs = FamilyBlog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @family_blogs }
    end
  end

  # GET /family_blogs/1
  # GET /family_blogs/1.json
  def show
    @family_blog = FamilyBlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family_blog }
    end
  end

  # GET /family_blogs/new
  # GET /family_blogs/new.json
  def new
    @family_blog = FamilyBlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family_blog }
    end
  end

  # GET /family_blogs/1/edit
  def edit
    @family_blog = FamilyBlog.find(params[:id])
  end

  # POST /family_blogs
  # POST /family_blogs.json
  def create
    @family_blog = FamilyBlog.new(params[:family_blog])

    respond_to do |format|
      if @family_blog.save
        format.html { redirect_to @family_blog, notice: 'Family blog was successfully created.' }
        format.json { render json: @family_blog, status: :created, location: @family_blog }
      else
        format.html { render action: "new" }
        format.json { render json: @family_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /family_blogs/1
  # PUT /family_blogs/1.json
  def update
    @family_blog = FamilyBlog.find(params[:id])

    respond_to do |format|
      if @family_blog.update_attributes(params[:family_blog])
        format.html { redirect_to @family_blog, notice: 'Family blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_blogs/1
  # DELETE /family_blogs/1.json
  def destroy
    @family_blog = FamilyBlog.find(params[:id])
    @family_blog.destroy

    respond_to do |format|
      format.html { redirect_to family_blogs_url }
      format.json { head :no_content }
    end
  end
end
