require 'test_helper'

class Piece21sControllerTest < ActionController::TestCase
  setup do
    @piece21 = piece21s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece21s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece21" do
    assert_difference('Piece21.count') do
      post :create, piece21: { name: @piece21.name, pnameform_id: @piece21.pnameform_id, user_id: @piece21.user_id }
    end

    assert_redirected_to piece21_path(assigns(:piece21))
  end

  test "should show piece21" do
    get :show, id: @piece21
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece21
    assert_response :success
  end

  test "should update piece21" do
    patch :update, id: @piece21, piece21: { name: @piece21.name, pnameform_id: @piece21.pnameform_id, user_id: @piece21.user_id }
    assert_redirected_to piece21_path(assigns(:piece21))
  end

  test "should destroy piece21" do
    assert_difference('Piece21.count', -1) do
      delete :destroy, id: @piece21
    end

    assert_redirected_to piece21s_path
  end
end
