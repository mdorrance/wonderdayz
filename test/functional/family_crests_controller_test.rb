require 'test_helper'

class FamilyCrestsControllerTest < ActionController::TestCase
  setup do
    @family_crest = family_crests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:family_crests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family_crest" do
    assert_difference('FamilyCrest.count') do
      post :create, family_crest: { crest_id: @family_crest.crest_id, family_id: @family_crest.family_id }
    end

    assert_redirected_to family_crest_path(assigns(:family_crest))
  end

  test "should show family_crest" do
    get :show, id: @family_crest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family_crest
    assert_response :success
  end

  test "should update family_crest" do
    put :update, id: @family_crest, family_crest: { crest_id: @family_crest.crest_id, family_id: @family_crest.family_id }
    assert_redirected_to family_crest_path(assigns(:family_crest))
  end

  test "should destroy family_crest" do
    assert_difference('FamilyCrest.count', -1) do
      delete :destroy, id: @family_crest
    end

    assert_redirected_to family_crests_path
  end
end
