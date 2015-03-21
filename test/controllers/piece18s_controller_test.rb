require 'test_helper'

class Piece18sControllerTest < ActionController::TestCase
  setup do
    @piece18 = piece18s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece18s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece18" do
    assert_difference('Piece18.count') do
      post :create, piece18: { name: @piece18.name, pnameform_id: @piece18.pnameform_id, user_id: @piece18.user_id }
    end

    assert_redirected_to piece18_path(assigns(:piece18))
  end

  test "should show piece18" do
    get :show, id: @piece18
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece18
    assert_response :success
  end

  test "should update piece18" do
    patch :update, id: @piece18, piece18: { name: @piece18.name, pnameform_id: @piece18.pnameform_id, user_id: @piece18.user_id }
    assert_redirected_to piece18_path(assigns(:piece18))
  end

  test "should destroy piece18" do
    assert_difference('Piece18.count', -1) do
      delete :destroy, id: @piece18
    end

    assert_redirected_to piece18s_path
  end
end
