class ParentsController < ApplicationController

  def view_student_grades
  end

  def index
    @parents = Parent.all
  end
  
  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.new(user_params)
    @parent.save
    redirect_to 'parents'
  end

  private

  def user_params
    params.require(:parent).permit(:first_name, :last_name, :student_id, :email, :password)
  end
end
