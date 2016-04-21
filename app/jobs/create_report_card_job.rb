require 'csv' # 'txt'

# Create Report Cards, these should be processed in a queue, stored for record
# keeping without reprocessing
class CreateReportCardJob < ActiveJob::Base
  queue_as :default

  def perform(student)
    # report_card
    # student = Student.find(params[:id])
    report_card = Grade.find(student)
  end



  # def perform(owner)
  #   voice = VOICES.split("\n").sample
  #   `say -v '#{voice}' -r #{rand(150..500)} #{owner.name}`
  # end
  # def create
  #   @owner = Owner.find(params[:report][:owner_id])
  #   ProcessReportJob.perform_now(arg)   # if arg is an ActiveRecord object
  # end
  # def perform(*args)
  #   # Do something later
  # end
end
