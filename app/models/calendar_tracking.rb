class CalendarTracking < ApplicationRecord
  belongs_to :calendar
  belongs_to :responsable, class_name: :User, optional: true

  enum type_client: [ :candidate, :prospect, :opportunity, :client ]
  enum type_scheduled: [ :appointment_service, :first_sales_appointment, :followup_appointment, :accompaniment_appointment ]  
  enum action: [:sale, :demonstration, :analysis, :tracing]
  enum status: [:concluded, :concluded_partially, :postponed, :not_interested, :canceled]

  def formatted_time
    Time.parse((self.hour).to_s).strftime("%I:%M %p")
  end

end
