require_relative 'train'
require_relative 'route'
require_relative 'station'
require_relative 'cargo_train'

cargo_train = CargoTrain.new("111", 2)
puts cargo_train

train = Train.new("111", "passenger", 3)
train2 = Train.new("222", "пассажир", 3)
train3 = Train.new("333", "грузовой", 2)

a_station = Station.new("a_station")
c_station = Station.new("c_station")

route = Route.new(a_station, c_station)
train.set_route(route)
train.next_station
