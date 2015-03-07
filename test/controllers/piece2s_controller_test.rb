require 'test_helper'

class Piece2sControllerTest < ActionController::TestCase
  setup do
    @piece2 = piece2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece2" do
    assert_difference('Piece2.count') do
      post :create, piece2: { name: @piece2.name, user_id: @piece2.user_id }
    end

    assert_redirected_to piece2_path(assigns(:piece2))
  end

  test "should show piece2" do
    get :show, id: @piece2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece2
    assert_response :success
  end

  test "should update piece2" do
    patch :update, id: @piece2, piece2: { name: @piece2.name, user_id: @piece2.user_id }
    assert_redirected_to piece2_path(assigns(:piece2))
  end

  test "should destroy piece2" do
    assert_difference('Piece2.count', -1) do
      delete :destroy, id: @piece2
    end

    assert_redirected_to piece2s_path
  end
end
