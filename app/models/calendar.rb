class Calendar < ApplicationRecord
    belongs_to :assignor, class_name: :User, optional: true
    belongs_to :agent, class_name: :User, optional: true
    has_and_belongs_to_many :products
    has_many :calendar_trackings
  
    enum type_client: [ :candidate, :prospect, :opportunity, :client ]
    enum type_scheduled: [ :appointment_service, :first_sales_appointment, :followup_appointment, :accompaniment_appointment ]
    enum status: [:active, :canceled, :postponed, :unfulfilled]
  
    def formatted_date
      #self.day.strftime("%a, %v")
      I18n.l(self.day)
    end
  
    def formatted_time
      Time.parse((self.hour).to_s).strftime("%I:%M %p")
    end
end
