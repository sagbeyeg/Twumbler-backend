class Api::V1::PostsController < ApplicationController

  before_action :find_post, except: [:create]

  def show
    render json: @post
  end

  def create
    post = Post.create(post_params(:user_id, :title, :content))
    render json: post
  end

  def update
	  @post.update(post_params(:title, :content))
    render json: @post
  end

  def destroy
    @post.destroy
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params(*args)
		params.require(:post).permit(*args)
  end
  
end
