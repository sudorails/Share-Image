class Album < ActiveRecord::Base
  attr_accessible :album_title, :user_id
  has_many :images, :dependent => :destroy
  validates_associated :images
  belongs_to :user

  extend FriendlyId
  friendly_id :album_title, use: :slugged

 
 #validations
  validates_presence_of :album_title
  validates_uniqueness_of :album_title
   

  def image_count
   if self.user.images.size > 25
    errors.add(:images, "limit exceded")
   end
  end

end
