class Route
  attr_reader :start_station, :end_station, :stations

  def initialize(start_station, end_station)
    @start_station = start_station
    @end_station = end_station
    @stations = [start_station, end_station]
  end

  def add_station(station)
    @stations.insert(1, station)
  end

  def delete_station(station)
    #Check if station exist
    if @stations.include?(station)
      #Check if user tries to delete first or last station
      if @stations.first != station && @stations.last != station
        @stations.delete(station)
      else 
        puts "You cannot delete starting/ending station"
      end
    else
      puts "Station not found"
    end
  end
    def display_stations
      @stations.map { |station| puts station }
    end
end
