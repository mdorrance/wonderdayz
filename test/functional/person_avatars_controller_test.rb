require 'test_helper'

class PersonAvatarsControllerTest < ActionController::TestCase
  setup do
    @person_avatar = person_avatars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_avatars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_avatar" do
    assert_difference('PersonAvatar.count') do
      post :create, person_avatar: { avatar_id: @person_avatar.avatar_id, person_id: @person_avatar.person_id }
    end

    assert_redirected_to person_avatar_path(assigns(:person_avatar))
  end

  test "should show person_avatar" do
    get :show, id: @person_avatar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_avatar
    assert_response :success
  end

  test "should update person_avatar" do
    put :update, id: @person_avatar, person_avatar: { avatar_id: @person_avatar.avatar_id, person_id: @person_avatar.person_id }
    assert_redirected_to person_avatar_path(assigns(:person_avatar))
  end

  test "should destroy person_avatar" do
    assert_difference('PersonAvatar.count', -1) do
      delete :destroy, id: @person_avatar
    end

    assert_redirected_to person_avatars_path
  end
end
