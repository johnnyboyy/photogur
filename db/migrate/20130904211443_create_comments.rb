class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.references :picture, index: true

      t.timestamps
    end
  end
end
