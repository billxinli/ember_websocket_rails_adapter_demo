class Ws::V1::PostsController < WebsocketRails::BaseController
  before_action :load_post, only: :show


  def create
    @post = Post.new(message['post'])
    if @post.save
      trigger_success({ payload: { post: @post } })
    else
      trigger_failure(
        {

          status: 422,
          message: 'invalid post',
          params: message,
          error: @post.errors

        }
      )
    end
  end

  def index
    type = message['type']
    if type =='find_all'
      payload = Post.all
      trigger_success({ payload: { posts: payload } })
    elsif type =='find_query'
      payload = Post.all
      trigger_success({ payload: { posts: payload } })
    elsif type == 'find'
      payload = Post.where(id: message['id']).first
      trigger_success({ payload: { post: payload } })
    end
  end

  def load_post
    controller_store[:load_post] = Post.where(id: message['id']).first
  end

  def show
    controller_store[:load_post] = Post.where(id: message['id']).first

    if controller_store[:load_post]
      trigger_success(
        {
          payload:
            {
              post: controller_store[:load_post]
            }
        }
      )
    else
      trigger_failure(
        {

          status: 422,
          message: 'invalid post',
          params: message

        }
      )
    end
  end

  def update
    @post = Post.where(id: message['id']).first

    @post.update_attributes(message['post'])
    trigger_success({ payload: { post: @post } })
  end

  def destroy
    @post = Post.where(id: message['id']).first

    @post.destroy
    trigger_success({ payload: { post: @post } })
  end


end