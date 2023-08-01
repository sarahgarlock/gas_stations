class SearchFacade
  def get_stations(location)
    request = SearchService.new.search_station(location)
    @stations = request[:fuel_stations].map do |station|
      Station.new(station)
    end
  end
end