class SearchController < ApplicationController
  def index
    @location = SearchFacade.new.get_stations(params[:location])
  end
end