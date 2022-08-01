class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name_of, null: false, default: 'Admin'
      t.boolean :stated_at, null: false, default: true

      t.timestamps
    end
  end
end
