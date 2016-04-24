# Preview all emails at http://localhost:3000/rails/mailers/report_card
class ReportCardPreview < ActionMailer::Preview

  # def report_card_email(student)
  #   @student = student
  #   @url  = 'http://localhost:3000'
  #   attachments["students_#{student.id}_new_.csv"] = File.read("public/reports/students_#{student.id}_new_.csv")
  #   mail to: [@student.email, "steven.m.fake@gmail.com"], subject: 'New Report Card'
  # end

  # def new_report_card
  #   @student = Student.find(params[:id])
  #     CreateReportCardJob.perform_later(@student)
  #
  #     respond_to do |format|
  #       # Tell the ReportMailer to send a welcome email after save
  #       ReportCardMailer.report_card_email(@student).deliver_now
  #       format.html { redirect_to(@student, notice: 'Report card was successfully sent.') }
  #       format.json { render json: @student, status: :created, location: @student }
  #     end
  # end


end
