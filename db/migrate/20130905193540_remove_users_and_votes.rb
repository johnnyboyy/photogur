class RemoveUsersAndVotes < ActiveRecord::Migration
  def change
  	drop_table :users, :votes
  end
end
