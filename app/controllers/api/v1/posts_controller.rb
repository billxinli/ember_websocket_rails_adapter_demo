class Api::V1::PostsController < ApplicationController
  before_action :build_post, only: [:new, :create]
  before_action :load_post, except: [:index, :new, :create]

  def index
    @posts = scope_this.all
  end

  def create
    @post.save!
  rescue ActiveRecord::RecordInvalid
    api_error!('Invalid post', @post.errors)
  end

  def show
  end

  def update
    @post.update_attributes!(post_params)
  rescue ActiveRecord::RecordInvalid
    api_error!('Invalid post', @post.errors)
  end

  def destroy
    @post.destroy
  end

  private
  def scope_this
    scope = Post

    scope
  end

  def build_post
    @post = Post.new(post_params)
  end

  def load_post
    @post = scope_this.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    api_error!('Invalid post', params)
  end

  def post_params
    params.fetch(:post, {}).permit(
      :title,
      :content
    )
  end
end
