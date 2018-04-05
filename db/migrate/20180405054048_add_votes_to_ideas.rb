class AddVotesToIdeas < ActiveRecord::Migration[5.1]
  def change
    add_column :ideas, :votes, :integer
  end
end
