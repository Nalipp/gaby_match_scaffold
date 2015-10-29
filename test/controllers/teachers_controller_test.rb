require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher" do
    assert_difference('Teacher.count') do
      post :create, teacher: { availability: @teacher.availability, description: @teacher.description, name: @teacher.name, password: @teacher.password, price: @teacher.price, skill_1: @teacher.skill_1, skill_2: @teacher.skill_2, skill_3: @teacher.skill_3, teacher_email: @teacher.teacher_email }
    end

    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should show teacher" do
    get :show, id: @teacher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher
    assert_response :success
  end

  test "should update teacher" do
    patch :update, id: @teacher, teacher: { availability: @teacher.availability, description: @teacher.description, name: @teacher.name, password: @teacher.password, price: @teacher.price, skill_1: @teacher.skill_1, skill_2: @teacher.skill_2, skill_3: @teacher.skill_3, teacher_email: @teacher.teacher_email }
    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should destroy teacher" do
    assert_difference('Teacher.count', -1) do
      delete :destroy, id: @teacher
    end

    assert_redirected_to teachers_path
  end
end
