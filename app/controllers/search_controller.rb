class SearchController < ApplicationController
  def index
    @location = SearchFacade.new.get_stations(params[:location])
    @directions = MapFacade.new.get_all_directions(@location.first.street_address, params[:location])
  end
end