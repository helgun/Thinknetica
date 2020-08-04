require_relative 'train'
require_relative 'route'
require_relative 'station'
require_relative 'cargo_train'

# cargo_train = CargoTrain.new("111", 2)
# puts cargo_train
#
# train = Train.new("111", "passenger", 3)
# train2 = Train.new("222", "пассажир", 3)
# train3 = Train.new("333", "грузовой", 2)
#
# a_station = Station.new("a_station")
# c_station = Station.new("c_station")
#
# route = Route.new(a_station, c_station)
# train.set_route(route)
# train.next_station

@stations = []
@trains = []
@routes = []

def create_station
  puts "Enter the name of the station: "
   station = gets.chomp
   @stations << Station.new(station)
   puts "Station #{station} created"
end

def create_train
  #train type
  puts "Choose train type: 1. passenger, 2. cargo"
  train_type = gets.to_i
  if train_type == 1
    train_type = "passenger"
  elsif train_type == 2
    train_type = "cargo"
  else
    puts "Enter correct type"
    create_train
  end

  puts "Enter train number"
  train_number = gets.to_i
  train = Train.new(train_number, train_type)
  @trains << train
end


def routes
  puts "1. Show routes"
  puts "2. Add routes"
  puts "3. Delete routes"
  user_input = gets.to_i

  if user_input == 1
    @routes.each { |route| puts route.name }
  elsif user_input == 2
    puts 'Выберете станцию отправления и назначения из списка и введите через запятую'
      @stations.each.with_index(1) { |val, index| puts "#{index} - #{val.name}" }
      first, second = gets.split(',').map(&:to_i)
      route = Route.new(@stations[first - 1], @stations[second - 1])
      @routes.push(route)
  elsif user_input == 3
    #Delete route
  end
end



loop do
  puts "1. Create station"
  puts "2. Create train"
  puts "3. Routes"
  puts "0. Exit"
  user_input = gets.to_i
  case user_input
  when 1
    create_station
  when 2
    create_train
  when 3
    routes
  when 0
    exit
  else
    puts "bye"
  end
end
