require 'test_helper'

class ParentsControllerTest < ActionController::TestCase
  test "should get view_student_grades" do
    get :view_student_grades
    assert_response :success
  end

end
