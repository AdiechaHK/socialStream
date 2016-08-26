class SocialPostsController < ApplicationController
  before_action :set_social_post, only: [:show, :edit, :update, :destroy]

  # GET /social_posts
  # GET /social_posts.json
  def index
    @social_posts = SocialPost.all
  end

  # GET /social_posts/1
  # GET /social_posts/1.json
  def show
  end

  # GET /social_posts/new
  def new
    @social_post = SocialPost.new
  end

  # GET /social_posts/1/edit
  def edit
  end

  # POST /social_posts
  # POST /social_posts.json
  def create
    @social_post = SocialPost.new(social_post_params)

    respond_to do |format|
      if @social_post.save
        format.html { redirect_to @social_post, notice: 'Social post was successfully created.' }
        format.json { render :show, status: :created, location: @social_post }
      else
        format.html { render :new }
        format.json { render json: @social_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_posts/1
  # PATCH/PUT /social_posts/1.json
  def update
    respond_to do |format|
      if @social_post.update(social_post_params)
        format.html { redirect_to @social_post, notice: 'Social post was successfully updated.' }
        format.json { render :show, status: :ok, location: @social_post }
      else
        format.html { render :edit }
        format.json { render json: @social_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_posts/1
  # DELETE /social_posts/1.json
  def destroy
    @social_post.destroy
    respond_to do |format|
      format.html { redirect_to social_posts_url, notice: 'Social post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_post
      @social_post = SocialPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def social_post_params
      params.fetch(:social_post, {})
    end
end
