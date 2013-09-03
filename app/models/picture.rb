class Picture < ActiveRecord::Base


  validates :title, length: { minimum: 2 }
  validates :artist, length: { minimum: 2 }
  validates :URL, length: { minimum: 2 }


end
