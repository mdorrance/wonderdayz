require 'test_helper'

class PersonalBlogsControllerTest < ActionController::TestCase
  setup do
    @personal_blog = personal_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_blog" do
    assert_difference('PersonalBlog.count') do
      post :create, personal_blog: { blog: @personal_blog.blog, person_id: @personal_blog.person_id }
    end

    assert_redirected_to personal_blog_path(assigns(:personal_blog))
  end

  test "should show personal_blog" do
    get :show, id: @personal_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_blog
    assert_response :success
  end

  test "should update personal_blog" do
    put :update, id: @personal_blog, personal_blog: { blog: @personal_blog.blog, person_id: @personal_blog.person_id }
    assert_redirected_to personal_blog_path(assigns(:personal_blog))
  end

  test "should destroy personal_blog" do
    assert_difference('PersonalBlog.count', -1) do
      delete :destroy, id: @personal_blog
    end

    assert_redirected_to personal_blogs_path
  end
end
