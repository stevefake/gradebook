class GradesController < ApplicationController
  before_action :require_user, only: [:index, :show]  #<--may need to edit 'only' options
  before_action :require_teacher, only: [:show, :new, :create, :edit, :destroy]
  # before_action :require_parent, only: [:show]    #<--not sure if needed or is taken care of by user one above
  # before_action :require_student, only: [:show]   #<--not sure if needed or is taken care of by user one above
  def index
    @grades = Grade.all
  end

  def show
    @grade = Grade.find(params[:id])
  end

  def edit
    @grade = Grade.find(params[:id])
    # redirect_to '/'
  end

  def update
    @grade = Grade.find(params[:id])
    if @grade.update_attributes(grade_params)
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def create
    @grade = Grade.new(user_params) # params[:id]
    @grade.save
    session[:user_id] = @user.id
    redirect_to '/'
  end

  def new_report_card
    @students = Student.all
    # grades = Grade.all
    # grades = grades.where(params[:id])
    # student.grades
    # @owners = Owner.limit(50)
    # @owners.each do |owner|
    @students.each do |student|
      CreateReportCardJob.perform_later(student)
    end
    # Enqueue a job to be performed as soon as the queuing system is
    # free.
    # CreateReportCardJob.perform_later student_id

  end

  private

  def grade_params
    params.require(:grade).permit(:assignment_grade, :assignment_name, :assignment_date)
  end
end
