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
    @@wagons_qty += 1 if @speed == 0
  end

  def decrease_wagons
    if @wagons_qty > 0
      @@wagons_qty -= 1 if @speed == 0
    end
  end

  def set_route(route)
    @route = route
    @current_station = @route.stations.first
    @current_station.get_train(self)
  end

  def current_station
    puts "Текущая станция:#{@current_station.name}"
  end  

  def next_station
    #Checking if no next station
    if @current_station != @route.stations.last
      next_station = @route.stations.index(@current_station) + 1
      @current_station = @route.stations[next_station]
     puts "Едем на след. станция: #{@current_station.name}"
    else
     puts "Это была конечная станция"
    end
  end

  def prev_station
    #Checking if no prev station
    if 0 != @route.stations.index(@current_station)
      next_station = @route.stations.index(@current_station) - 1
      @current_station = @route.stations[next_station]
     puts "Едем на пред. станцию: #{@current_station.name}"
    else
     puts "Вы дошли до начальной станции"
    end
  end
end
