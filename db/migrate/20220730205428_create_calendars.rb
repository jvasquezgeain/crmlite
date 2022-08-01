class CreateCalendars < ActiveRecord::Migration[7.0]
  def change
    create_table :calendars do |t|
      t.string :company, limit: 200, null: true, default: ''
      t.string :contact, limit: 200, null: true, default: ''
      t.integer :job_title, null: true
      t.integer :type_customer, null: true
      t.integer :type_scheduled, null: true
      t.integer :assigned_by_id, null: true
      t.integer :agent_id, null: true
      t.date :day
      t.time :hour
      t.string :address, limit: 300, null: true, default: ''
      t.string :phone, null: true, default: ''
      t.string :observation, limit: 500, null: true, default: ''
      t.integer :status, default: 0, limit: 1
      t.boolean :stated_at, null: false, default: true

      t.timestamps
    end
  end
end
