class SearchService

  def search_station(location)
    get_url("/api/alt-fuel-stations/v1/nearest.json?location=#{location}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new("https://developer.nrel.gov") do |f|
      f.headers['x-api-key'] = ENV['FUELS_KEY']
    end
  end
end