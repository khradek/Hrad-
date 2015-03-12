require 'test_helper'

class PnameformsControllerTest < ActionController::TestCase
  setup do
    @pnameform = pnameforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pnameforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pnameform" do
    assert_difference('Pnameform.count') do
      post :create, pnameform: { pname1: @pnameform.pname1, pname2: @pnameform.pname2, pname3: @pnameform.pname3, pname4: @pnameform.pname4, pname5: @pnameform.pname5, pname6: @pnameform.pname6 }
    end

    assert_redirected_to pnameform_path(assigns(:pnameform))
  end

  test "should show pnameform" do
    get :show, id: @pnameform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pnameform
    assert_response :success
  end

  test "should update pnameform" do
    patch :update, id: @pnameform, pnameform: { pname1: @pnameform.pname1, pname2: @pnameform.pname2, pname3: @pnameform.pname3, pname4: @pnameform.pname4, pname5: @pnameform.pname5, pname6: @pnameform.pname6 }
    assert_redirected_to pnameform_path(assigns(:pnameform))
  end

  test "should destroy pnameform" do
    assert_difference('Pnameform.count', -1) do
      delete :destroy, id: @pnameform
    end

    assert_redirected_to pnameforms_path
  end
end
