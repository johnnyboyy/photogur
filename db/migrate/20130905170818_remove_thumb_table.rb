class RemoveThumbTable < ActiveRecord::Migration
  def change
  	drop_table :thumbs, :votes
  end
end
