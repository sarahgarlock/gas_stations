class Station
  attr_reader :name,
              :fuel_type,
              :access_time,
              :street_address

  def initialize(data)
    @name = data[:station_name]
    @fuel_type = data[:fuel_type_code]
    @access_time = data[:access_days_time]
    @street_address = data[:street_address]
  end

end