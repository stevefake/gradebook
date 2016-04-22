require 'csv' # 'txt'

class CreateReportCardJob < ActiveJob::Base
  queue_as :default

  def perform(student)
    CSV.open("public/reports/students_#{student.id}_new_report_card.csv" ,"wb") do |csv|
    csv << ["student_id", "assignment_name", "assignment_date", "assignment_grade"]
      student.grades.each do |grade|
        csv << [grade.student_id, grade.assignment_name, grade.assignment_date, grade.assignment_grade]
      end
    end
  end
end
