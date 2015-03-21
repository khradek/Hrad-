require 'test_helper'

class Piece15sControllerTest < ActionController::TestCase
  setup do
    @piece15 = piece15s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece15s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece15" do
    assert_difference('Piece15.count') do
      post :create, piece15: { name: @piece15.name, pnameform_id: @piece15.pnameform_id, user_id: @piece15.user_id }
    end

    assert_redirected_to piece15_path(assigns(:piece15))
  end

  test "should show piece15" do
    get :show, id: @piece15
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece15
    assert_response :success
  end

  test "should update piece15" do
    patch :update, id: @piece15, piece15: { name: @piece15.name, pnameform_id: @piece15.pnameform_id, user_id: @piece15.user_id }
    assert_redirected_to piece15_path(assigns(:piece15))
  end

  test "should destroy piece15" do
    assert_difference('Piece15.count', -1) do
      delete :destroy, id: @piece15
    end

    assert_redirected_to piece15s_path
  end
end
