require_relative 'train'
require_relative 'route'
require_relative 'station'


train = Train.new("123", "cargo", 3)
route = Route.new("a_station", "c_station")
station = Station.new(train)

route.display_routes
station.get_train(train)
station.show_trains
station.send_train(train)
