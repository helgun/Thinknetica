class Train
  attr_reader :speed, :wagon_size, :current_station, :type

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

  def accept_route(route)
    @route = route
    @current_station = route.first_station
  end

  def next_station
    current_station_index = @route.route.index(@current_station)
    @route.route[current_station_index + 1]
  end

  def move_next_station
    @current_station = next_station
  end

  def prev_station
    current_station_index = @route.route.index(@current_station)
    @route.route[current_station_index - 1] if current_station_index != 0
  end

  def move_prev_station
    current_station_index = @route.route.index(@current_station)
    @current_station = prev_station
  end
end
