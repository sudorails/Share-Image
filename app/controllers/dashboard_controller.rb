class DashboardController < ApplicationController
  def index
   @images = Image.all.last(25)
  end
end
