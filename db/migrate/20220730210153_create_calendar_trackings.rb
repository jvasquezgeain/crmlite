class CreateCalendarTrackings < ActiveRecord::Migration[7.0]
  def change
    create_table :calendar_trackings do |t|
      t.date :day
      t.time :hour
      t.text :comments, null: true, default: ''
      t.integer :action, null: true
      t.references :calendar, null: false, foreign_key: true
      t.integer :type_customer, null: true
      t.integer :type_scheduled, null: true
      t.integer :agent_id, null: true
      t.string :observation, limit:300
      t.decimal :budget, precision:36, scale: 6, default: 0
      t.integer :status, default: 0, limit: 1
      t.boolean :stated_at, null: false, default: true

      t.timestamps
    end
  end
end
