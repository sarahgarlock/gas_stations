class MapFacade
  def get_all_directions(from_location, to_location)
    request = MapService.new.get_directions(from_location, to_location)
    @directions = request[:route][:legs].each do |leg|
      Direction.new(leg)
    end
  end
end