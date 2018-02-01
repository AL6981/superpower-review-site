class CreateSuperpowers < ActiveRecord::Migration[5.1]
  def change
    create_table :superpowers do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
