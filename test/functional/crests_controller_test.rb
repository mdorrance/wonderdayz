require 'test_helper'

class CrestsControllerTest < ActionController::TestCase
  setup do
    @crest = crests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crest" do
    assert_difference('Crest.count') do
      post :create, crest: { name: @crest.name }
    end

    assert_redirected_to crest_path(assigns(:crest))
  end

  test "should show crest" do
    get :show, id: @crest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crest
    assert_response :success
  end

  test "should update crest" do
    put :update, id: @crest, crest: { name: @crest.name }
    assert_redirected_to crest_path(assigns(:crest))
  end

  test "should destroy crest" do
    assert_difference('Crest.count', -1) do
      delete :destroy, id: @crest
    end

    assert_redirected_to crests_path
  end
end
