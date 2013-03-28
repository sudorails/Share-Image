class DashboardController < ApplicationController
  def index
   @albums = Image.all.last(25)
  end
end
