require 'test_helper'

class Ws::V1::PostsControllerTest < ActionController::TestCase
  setup do
    @ws_v1_post = ws_v1_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ws_v1_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ws_v1_post" do
    assert_difference('Ws::V1::Post.count') do
      post :create, ws_v1_post: {  }
    end

    assert_redirected_to ws_v1_post_path(assigns(:ws_v1_post))
  end

  test "should show ws_v1_post" do
    get :show, id: @ws_v1_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ws_v1_post
    assert_response :success
  end

  test "should update ws_v1_post" do
    patch :update, id: @ws_v1_post, ws_v1_post: {  }
    assert_redirected_to ws_v1_post_path(assigns(:ws_v1_post))
  end

  test "should destroy ws_v1_post" do
    assert_difference('Ws::V1::Post.count', -1) do
      delete :destroy, id: @ws_v1_post
    end

    assert_redirected_to ws_v1_posts_path
  end
end
