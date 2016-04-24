class ReportCardMailer < ActionMailer::Base
  default from: "admin@lawndalehigh.edu"
  layout 'mailer'

  def report_card_email(student)
    @student = student
    @url  = 'http://localhost:3000'
    attachments["students_#{student.id}_new_.csv"] = File.read("public/reports/students_#{student.id}_new_.csv")
    mail to: [@student.email, "steven.m.fake@gmail.com"], subject: 'New Report Card'
  end


end
