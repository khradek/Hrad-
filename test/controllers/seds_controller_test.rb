require 'test_helper'

class SedsControllerTest < ActionController::TestCase
  setup do
    @sed = seds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sed" do
    assert_difference('Sed.count') do
      post :create, sed: { name: @sed.name, user_id: @sed.user_id }
    end

    assert_redirected_to sed_path(assigns(:sed))
  end

  test "should show sed" do
    get :show, id: @sed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sed
    assert_response :success
  end

  test "should update sed" do
    patch :update, id: @sed, sed: { name: @sed.name, user_id: @sed.user_id }
    assert_redirected_to sed_path(assigns(:sed))
  end

  test "should destroy sed" do
    assert_difference('Sed.count', -1) do
      delete :destroy, id: @sed
    end

    assert_redirected_to seds_path
  end
end
