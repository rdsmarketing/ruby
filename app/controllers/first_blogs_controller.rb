class FirstBlogsController < ApplicationController
  before_action :set_first_blog, only: [:show, :edit, :update, :destroy]

  # GET /first_blogs
  # GET /first_blogs.json
  def index
    @first_blogs = FirstBlog.all
  end

  # GET /first_blogs/1
  # GET /first_blogs/1.json
  def show
  end

  # GET /first_blogs/new
  def new
    @first_blog = FirstBlog.new
  end

  # GET /first_blogs/1/edit
  def edit
  end

  # POST /first_blogs
  # POST /first_blogs.json
  def create
    @first_blog = FirstBlog.new(first_blog_params)

    respond_to do |format|
      if @first_blog.save
        format.html { redirect_to @first_blog, notice: 'First blog was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @first_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_blogs/1
  # PATCH/PUT /first_blogs/1.json
  def update
    respond_to do |format|
      if @first_blog.update(first_blog_params)
        format.html { redirect_to @first_blog, notice: 'First blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @first_blog }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /first_blogs/1
  # DELETE /first_blogs/1.json
  def destroy
    @first_blog.destroy
    respond_to do |format|
      format.html { redirect_to first_blogs_url, notice: 'First blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_blog
      @first_blog = FirstBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_blog_params
      params.require(:first_blog).permit(:title, :body)
    end
end
