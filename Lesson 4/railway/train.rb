class Train
  attr_reader :wagons_qty
  @@speed = 0

  def initialize(number, type, wagons_qty)
    @number = number
    @type = type
    @wagons_qty = wagons_qty
  end

  #Может набирать скорость
  def increase_speed(speed)
    @@speed += speed
    puts "Набрал скорость на #{speed}"
  end

  def current_speed
    puts "Текущая скорость #{@@speed}"
  end

  def stop_speed(speed)
    if speed > @@speed
      @@speed = 0
      puts "Убавил скорость, скорость #{speed}"
    else
      @@speed -= speed
      puts "Убавил скорость на #{speed}"
    end
  end

  def increase_wagons
    @@wagons_qty += 1 if @@speed == 0
  end

  def decrease_wagons
    @@wagons_qty -= 1 if @@speed == 0
  end
end
