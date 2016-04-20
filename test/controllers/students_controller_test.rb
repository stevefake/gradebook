require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  test "should get view_grades" do
    get :view_grades
    assert_response :success
  end

end
