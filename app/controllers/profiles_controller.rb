class ProfilesController < ApplicationController
  def show 
   @my_albums = Album.find_all_by_user_id(current_user)
  end
end
