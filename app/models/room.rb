class Room < ApplicationRecord
  belongs_to :user
  has_many :photos

  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bed_room, presence: true
  validates :bath_room, presence: true
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1a8b03e... Added s3 Storage

  def cover_photo(size)
    if self.photos.length > 0
      self.photos[0].image.url(size)
    else
      'blank.jpeg'
    end 
  end

<<<<<<< HEAD
=======
>>>>>>> 087a17a... added paperclip
=======
>>>>>>> 1a8b03e... Added s3 Storage
end

