class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
  # attr_accessible :title, :body


  has_many :albums
  has_many :images

  def image_count
   self.albums.each do |album|
     if album.images.size>25
      errors.add(:images, "limit exceded")
     end
   end
  end

  def full_name
    self.first_name + " " + self.last_name
  end 

end
