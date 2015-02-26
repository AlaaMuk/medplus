require 'test_helper'

class HcprofsControllerTest < ActionController::TestCase
  setup do
    @hcprof = hcprofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hcprofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hcprof" do
    assert_difference('Hcprof.count') do
      post :create, hcprof: { email: @hcprof.email, location: @hcprof.location, name: @hcprof.name, notes: @hcprof.notes, phoneNumber: @hcprof.phoneNumber, shiftHours: @hcprof.shiftHours, title: @hcprof.title, user_id: @hcprof.user_id }
    end

    assert_redirected_to hcprof_path(assigns(:hcprof))
  end

  test "should show hcprof" do
    get :show, id: @hcprof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hcprof
    assert_response :success
  end

  test "should update hcprof" do
    patch :update, id: @hcprof, hcprof: { email: @hcprof.email, location: @hcprof.location, name: @hcprof.name, notes: @hcprof.notes, phoneNumber: @hcprof.phoneNumber, shiftHours: @hcprof.shiftHours, title: @hcprof.title, user_id: @hcprof.user_id }
    assert_redirected_to hcprof_path(assigns(:hcprof))
  end

  test "should destroy hcprof" do
    assert_difference('Hcprof.count', -1) do
      delete :destroy, id: @hcprof
    end

    assert_redirected_to hcprofs_path
  end
end
