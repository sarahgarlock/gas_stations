class MapService

  def get_directions(from_location, to_location)
    get_url("/directions/v2/route?key=#{ENV['MAPS_KEY']}&from=#{from_location}&to=#{to_location}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new("https://www.mapquestapi.com") do |f|
      f.params['api_key'] = ENV['MAPS_KEY']
    end
  end
end