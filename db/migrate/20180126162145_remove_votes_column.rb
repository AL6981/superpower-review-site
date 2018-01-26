class RemoveVotesColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :votes, :integer
  end
end
