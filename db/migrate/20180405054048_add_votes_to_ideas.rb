class AddVotesToIdeas < ActiveRecord::Migration[5.1]
  def change
    add_column :ideas, :votes, :integer, :default => 0
  end
end
