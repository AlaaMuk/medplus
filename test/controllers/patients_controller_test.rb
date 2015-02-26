require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { age: @patient.age, email: @patient.email, emergencyContactName: @patient.emergencyContactName, emergencyContactNum: @patient.emergencyContactNum, gender: @patient.gender, hcprof_id: @patient.hcprof_id, name: @patient.name, phoneNumber: @patient.phoneNumber, specialNotes: @patient.specialNotes, user_id: @patient.user_id }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { age: @patient.age, email: @patient.email, emergencyContactName: @patient.emergencyContactName, emergencyContactNum: @patient.emergencyContactNum, gender: @patient.gender, hcprof_id: @patient.hcprof_id, name: @patient.name, phoneNumber: @patient.phoneNumber, specialNotes: @patient.specialNotes, user_id: @patient.user_id }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
