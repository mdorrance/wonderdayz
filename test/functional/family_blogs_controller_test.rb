require 'test_helper'

class FamilyBlogsControllerTest < ActionController::TestCase
  setup do
    @family_blog = family_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:family_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family_blog" do
    assert_difference('FamilyBlog.count') do
      post :create, family_blog: { blog: @family_blog.blog, family_id: @family_blog.family_id }
    end

    assert_redirected_to family_blog_path(assigns(:family_blog))
  end

  test "should show family_blog" do
    get :show, id: @family_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family_blog
    assert_response :success
  end

  test "should update family_blog" do
    put :update, id: @family_blog, family_blog: { blog: @family_blog.blog, family_id: @family_blog.family_id }
    assert_redirected_to family_blog_path(assigns(:family_blog))
  end

  test "should destroy family_blog" do
    assert_difference('FamilyBlog.count', -1) do
      delete :destroy, id: @family_blog
    end

    assert_redirected_to family_blogs_path
  end
end
