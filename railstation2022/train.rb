class Train
  attr_reader :speed, :wagon_size, :current_station, :type

  TYPE = ["passenger", "cargo"]

  def initialize(number, type, wagon_size)
    @number = number
    @type = type
    @wagon_size = wagon_size
    @speed = 0
  end

  def increase_speed
    @speed += 10
  end

  def stop
    @speed = 0
  end

  def increase_wagon
    @wagon_size += 1 if @speed == 0
  end

  def deacrease_wagon
    @wagon_size -= 1 if @speed == 0
  end

  def accept_route(way_stations)
    @way_stations = way_stations
    @current_station = way_stations.first_station
  end

  def next_station
    current_station_index = @way_stations.way_stations.index(@current_station)
    next_station = @way_stations.way_stations[current_station_index + 1]
    next_station
  end

  def move_next_station
    current_station_index = @way_stations.way_stations.index(@current_station)
    @current_station = @way_stations.way_stations[current_station_index + 1]
  end

  def move_prev_station
    current_station_index = @way_stations.way_stations.index(@current_station)
    @current_station = @way_stations.way_stations[current_station_index - 1] if current_station_index != 0
  end

  def prev_station
    current_station_index = @way_stations.way_stations.index(@current_station)
    prev_station = @way_stations.way_stations[current_station_index - 1]
    prev_station
  end
end

