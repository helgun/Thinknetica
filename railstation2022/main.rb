require './Train.rb'
require './Station.rb'
require './Route.rb'

train = Train.new("123","passenger", 100)
station_one = Station.new("Stanciya1")
station_two = Station.new("Stanciya2")
route = Route.new(station_one, station_two)
train.accept_route(route)
train.current_station
train.next_station
train.prev_station
train.prev_station