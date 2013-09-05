class Picture < ActiveRecord::Base
	has_many :comments


  validates :title, length: { minimum: 2 }
  validates :artist, length: { minimum: 2 }
  validates :URL, length: { minimum: 2 }


end
