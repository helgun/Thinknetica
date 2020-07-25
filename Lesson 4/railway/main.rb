require_relative 'train'
require_relative 'route'
require_relative 'station'

train = Train.new("111", "грузовой", 3)
train2 = Train.new("222", "пассажир", 3)
train3 = Train.new("333", "грузовой", 2)

a_station = Station.new("a_station")
c_station = Station.new("c_station")

route = Route.new(a_station, c_station)
train.set_route(route)
train.next_station
train.current_station
train.prev_station
train.current_station
