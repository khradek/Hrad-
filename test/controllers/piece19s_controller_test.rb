require 'test_helper'

class Piece19sControllerTest < ActionController::TestCase
  setup do
    @piece19 = piece19s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece19s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece19" do
    assert_difference('Piece19.count') do
      post :create, piece19: { name: @piece19.name, pnameform_id: @piece19.pnameform_id, user_id: @piece19.user_id }
    end

    assert_redirected_to piece19_path(assigns(:piece19))
  end

  test "should show piece19" do
    get :show, id: @piece19
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece19
    assert_response :success
  end

  test "should update piece19" do
    patch :update, id: @piece19, piece19: { name: @piece19.name, pnameform_id: @piece19.pnameform_id, user_id: @piece19.user_id }
    assert_redirected_to piece19_path(assigns(:piece19))
  end

  test "should destroy piece19" do
    assert_difference('Piece19.count', -1) do
      delete :destroy, id: @piece19
    end

    assert_redirected_to piece19s_path
  end
end
