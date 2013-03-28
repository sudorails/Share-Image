class Album < ActiveRecord::Base
  attr_accessible :album_title, :user_id
  has_many :images
  belongs_to :user

  extend FriendlyId
  friendly_id :album_title, use: :slugged

 
 #validations
  validates_presence_of :album_title
  validates_uniqueness_of :album_title
   
  validate :images_count_valid?

  IMAGE_COUNT = 5
   def images_count_valid?
     if self.images.size>IMAGE_COUNT
      errors.add(:base, 'limit')
   end
  end

end
