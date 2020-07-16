require_relative 'train'
require_relative 'route'
require_relative 'station'

poezd = Train.new("123", "cargo", 2)
zvezda = Station.new("Zvezda")
luna = Station.new("Luna")
railway = Route.new(zvezda, luna)

puts luna.get_train(luna)
luna.show_trains
