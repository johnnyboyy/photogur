class Picture < ActiveRecord::Base

	belongs_to :user
	has_many :comments


  validates :title, length: { minimum: 2 }
  validates :artist, length: { minimum: 2 }
  validates :URL, length: { minimum: 2 }


end
