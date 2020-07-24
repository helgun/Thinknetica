require_relative 'train'
require_relative 'route'
require_relative 'station'


train = Train.new("111", "грузовой", 3)
train2 = Train.new("222", "пассажир", 3)
train3 = Train.new("333", "грузовой", 2)
route = Route.new("a_station", "c_station")
station = Station.new(train)

train.set_route(route)
train.next_station
train.prev_station
train.prev_station
