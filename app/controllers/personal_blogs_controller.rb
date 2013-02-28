class PersonalBlogsController < ApplicationController
  # GET /personal_blogs
  # GET /personal_blogs.json
  def index
    @personal_blogs = PersonalBlog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_blogs }
    end
  end

  # GET /personal_blogs/1
  # GET /personal_blogs/1.json
  def show
    @personal_blog = PersonalBlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_blog }
    end
  end

  # GET /personal_blogs/new
  # GET /personal_blogs/new.json
  def new
    @personal_blog = PersonalBlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_blog }
    end
  end

  # GET /personal_blogs/1/edit
  def edit
    @personal_blog = PersonalBlog.find(params[:id])
  end

  # POST /personal_blogs
  # POST /personal_blogs.json
  def create
    @personal_blog = PersonalBlog.new(params[:personal_blog])

    respond_to do |format|
      if @personal_blog.save
        format.html { redirect_to @personal_blog, notice: 'Personal blog was successfully created.' }
        format.json { render json: @personal_blog, status: :created, location: @personal_blog }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_blogs/1
  # PUT /personal_blogs/1.json
  def update
    @personal_blog = PersonalBlog.find(params[:id])

    respond_to do |format|
      if @personal_blog.update_attributes(params[:personal_blog])
        format.html { redirect_to @personal_blog, notice: 'Personal blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_blogs/1
  # DELETE /personal_blogs/1.json
  def destroy
    @personal_blog = PersonalBlog.find(params[:id])
    @personal_blog.destroy

    respond_to do |format|
      format.html { redirect_to personal_blogs_url }
      format.json { head :no_content }
    end
  end
end
