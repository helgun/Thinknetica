class Train
  attr_reader :speed, :wagon_size, :current_station

  TYPE = ["passenger", "freight"]

  def initialize(number, type, wagon_size)
    @number = number
    @type = type if TYPE.include?(type)
    @wagon_size = wagon_size
    @speed = 0
  end

  def increase_speed
    puts "Increasing speed to 10..."
    @speed += 10
    puts @speed
  end

  def stop
    puts "Stopping..."
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
    puts "Going to the next station..."
    current_station_index = @route.routes.index(@current_station)
    @current_station = @route.routes[current_station_index + 1]
    puts "Moved to #{@current_station.name}"
  end

  def prev_station
    puts "Going to the prev station..."
    current_station_index = @route.routes.index(@current_station)
    @current_station = @route.routes[current_station_index - 1] if current_station_index != 0
    puts "Moved to #{@current_station.name}"
  end
end
