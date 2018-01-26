class CreateVotesTypeColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :votes, :kind, :string
  end
end
