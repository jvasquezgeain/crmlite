class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :code, limit: 20
      t.string :name_of, limit: 200
      t.integer :type_product
      t.references :user, null: false, foreign_key: true
      t.boolean :stated_at

      t.timestamps
    end
  end
end
