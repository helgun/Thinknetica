class Route
  @@routes = []

  def initialize(start_station, end_station)
    @start_station = start_station
    @end_station = end_station

    @@routes << start_station << end_station
  end

  def add_station(station)
    @@routes.insert(1, station)
  end

  def delete_station(station)
    #Check if station exist
    if @@routes.include?(station)
      #Check if user tries to delete first or last station
      if (@@routes.first && @@routes.last) != station
        @@routes.delete(station)
      else 
        puts "You cannot delete starting/ending station"
      end
    else
      puts "Station not found"
    end
  end
    def display_routes
      @@routes.map { |station| puts station }
    end
end
