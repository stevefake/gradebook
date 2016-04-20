class GradesController < ApplicationController
  before_action :require_user, only: [:index, :show]  #<--may need to edit 'only' options
  before_action :require_teacher, only: [:show, :new, :create, :edit, :destroy]
  # before_action :require_parent, only: [:show]    #<--not sure if needed or is taken care of by user one above
  # before_action :require_student, only: [:show]   #<--not sure if needed or is taken care of by user one above
  def index
    @grades = Grade.all
    @grade = Grade.find(params[:id])
  end
end
