class AddRatingToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :rating, :integer, default: 0
  end
end
