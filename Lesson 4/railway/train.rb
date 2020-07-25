class Train
  attr_reader :wagons_qty, :number, :type, :current_station

  def initialize(number, type, wagons_qty)
    @number = number
    @type = type
    @wagons_qty = wagons_qty
    @speed = 0
  end

  #Может набирать скорость
  def increase_speed(speed)
    @speed += speed
    puts "Набрал скорость на #{speed}"
  end

  def current_speed
    puts "Текущая скорость #{@speed}"
  end

  def stop_speed(speed)
    if speed > @speed
      @speed = 0
      puts "Убавил скорость, скорость #{speed}"
    else
      @speed -= speed
      puts "Убавил скорость на #{speed}"
    end
  end

  def increase_wagons
    @wagons_qty += 1 if @speed == 0
  end

  def decrease_wagons
    @wagons_qty -= 1 if @speed.zero? && @wagons_qty > 0
  end

  def set_route(route)
    @route = route
    @current_station = @route.stations.first
    @current_station.get_train(self)
  end

  def current_station_index
    @route.stations.index(@current_station)
  end

  def current_station
    puts "Текущая станция:#{@current_station.name}"
  end

  def forward
    if next_station
      @current_station.send_train(self)
      @current_station = next_station
      @current_station.get_train(self)
    end
  end

  def backward
    if prev_station
      @current_station.send_train(self)
      @current_station = prev_station
      @current_station.get_train(self)
    end
  end

  def next_station
    @route.stations[current_station_index + 1]
  end

  def prev_station
    @route.stations[current_station_index - 1] unless current_station_index.zero?
  end
end
