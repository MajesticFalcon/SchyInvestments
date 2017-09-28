class WelcomeController < ApplicationController
  def index
    @prospects = current_user.prospects
    @hash = Gmaps4rails.build_markers(@prospects) do |house, marker|
      marker.lat house.latitude
      marker.lng house.longitude
    end
  end
end
