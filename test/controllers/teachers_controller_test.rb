require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get add_student" do
    get :add_student
    assert_response :success
  end

  test "should get add_parent" do
    get :add_parent
    assert_response :success
  end

  test "should get add_grade" do
    get :add_grade
    assert_response :success
  end

end
