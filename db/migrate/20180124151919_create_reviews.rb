class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :body, null: false
      t.integer :votes
      t.belongs_to :user
      t.belongs_to :superpower

      t.timestamps
    end
  end
end
