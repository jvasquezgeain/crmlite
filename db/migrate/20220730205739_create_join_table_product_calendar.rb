class CreateJoinTableProductCalendar < ActiveRecord::Migration[7.0]
  def change
    create_join_table :products, :calendars do |t|
      t.index [:product_id, :calendar_id]
      # t.index [:calendar_id, :product_id]
    end
  end
end
