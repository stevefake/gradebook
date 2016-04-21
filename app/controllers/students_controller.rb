class StudentsController < ApplicationController
  def view_grades
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(user_params)
    @student.save
    redirect_to 'students'
  end

  private

  def user_params
    params.require(:student).permit(:first_name, :last_name) # add i think? :email, :password, :teacher_id
  end
end
