class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def show
  end

  def edit
  end

  def update
  end

  def create
    @teacher = Teacher.new(user_params)
    @teacher.save
    redirect_to '/'
  end

  def delete
  end

  def add_student
  end

  def add_parent
  end

  def add_grade
  end

  private

  def user_params
    params.require(:teacher).permit(:first_name, :last_name)
  end
end
