require 'test_helper'

class EnlightenmentsControllerTest < ActionController::TestCase
  setup do
    @enlightenment = enlightenments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enlightenments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enlightenment" do
    assert_difference('Enlightenment.count') do
      post :create, enlightenment: { adventure_id: @enlightenment.adventure_id, goal_id: @enlightenment.goal_id }
    end

    assert_redirected_to enlightenment_path(assigns(:enlightenment))
  end

  test "should show enlightenment" do
    get :show, id: @enlightenment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enlightenment
    assert_response :success
  end

  test "should update enlightenment" do
    put :update, id: @enlightenment, enlightenment: { adventure_id: @enlightenment.adventure_id, goal_id: @enlightenment.goal_id }
    assert_redirected_to enlightenment_path(assigns(:enlightenment))
  end

  test "should destroy enlightenment" do
    assert_difference('Enlightenment.count', -1) do
      delete :destroy, id: @enlightenment
    end

    assert_redirected_to enlightenments_path
  end
end
