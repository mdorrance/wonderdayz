require 'test_helper'

class PersonAwardsControllerTest < ActionController::TestCase
  setup do
    @person_award = person_awards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_awards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_award" do
    assert_difference('PersonAward.count') do
      post :create, person_award: { award_id: @person_award.award_id, person_id: @person_award.person_id }
    end

    assert_redirected_to person_award_path(assigns(:person_award))
  end

  test "should show person_award" do
    get :show, id: @person_award
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_award
    assert_response :success
  end

  test "should update person_award" do
    put :update, id: @person_award, person_award: { award_id: @person_award.award_id, person_id: @person_award.person_id }
    assert_redirected_to person_award_path(assigns(:person_award))
  end

  test "should destroy person_award" do
    assert_difference('PersonAward.count', -1) do
      delete :destroy, id: @person_award
    end

    assert_redirected_to person_awards_path
  end
end
