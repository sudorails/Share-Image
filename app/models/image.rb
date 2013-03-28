class Image < ActiveRecord::Base
  attr_accessible :tag_line, :user_id, :photo, :album_id  
  belongs_to :user
  belongs_to :album

  has_attached_file :photo,
     :styles => {
       :thumb => "100x100",
       :large => "800x600" 
                }

   validate :count_images_in_album , :on=> :create

   def count_images_in_album
    
   end
  

end
