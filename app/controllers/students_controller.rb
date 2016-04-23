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
    @student.user = User.new #=> New User obejct
  end

  def create
    @student = Student.new(user_params)
    @student.save
    redirect_to students_path
  end

  def new_report_card
    @student = Student.find(params[:id])
      CreateReportCardJob.perform_later(@student)

      respond_to do |format|
        # Tell the ReportMailer to send a welcome email after save
        ReportCardMailer.report_card_email(@student).deliver_now
        format.html { redirect_to(@student, notice: 'Report card was successfully sent.') }
        format.json { render json: @student, status: :created, location: @student }
      end
  end

  private

  def user_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :teacher_id, :user_attributes)
  end
end
