require 'test_helper'

class AdventuresControllerTest < ActionController::TestCase
  setup do
    @adventure = adventures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adventures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adventure" do
    assert_difference('Adventure.count') do
      post :create, adventure: { activity_id: @adventure.activity_id, cost_id: @adventure.cost_id, family_crest_id: @adventure.family_crest_id, family_id: @adventure.family_id, location_id: @adventure.location_id, name: @adventure.name, review_id: @adventure.review_id, tips: @adventure.tips }
    end

    assert_redirected_to adventure_path(assigns(:adventure))
  end

  test "should show adventure" do
    get :show, id: @adventure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adventure
    assert_response :success
  end

  test "should update adventure" do
    put :update, id: @adventure, adventure: { activity_id: @adventure.activity_id, cost_id: @adventure.cost_id, family_crest_id: @adventure.family_crest_id, family_id: @adventure.family_id, location_id: @adventure.location_id, name: @adventure.name, review_id: @adventure.review_id, tips: @adventure.tips }
    assert_redirected_to adventure_path(assigns(:adventure))
  end

  test "should destroy adventure" do
    assert_difference('Adventure.count', -1) do
      delete :destroy, id: @adventure
    end

    assert_redirected_to adventures_path
  end
end
