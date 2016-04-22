class GradesController < ApplicationController
  before_action :require_user, only: [:index, :show]
  before_action :require_teacher, only: [:show, :new, :create, :edit, :destroy]

  def index
    @grades = Grade.all
  end

  def show
    @grade = Grade.find(params[:id])
  end

  def edit
    @grade = Grade.find(params[:id])
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
    @grade = Grade.new(user_params)
    @grade.save
    session[:user_id] = @user.id
    redirect_to '/'
  end

  private

  def grade_params
    params.require(:grade).permit(:assignment_grade, :assignment_name, :assignment_date)
  end
end
