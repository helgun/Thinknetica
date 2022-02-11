class Route
  attr_reader :first_station, :last_station, :routes
  #Имеет начальную и конечную станцию, а также список промежуточных станций.
  #Начальная и конечная станции указываютсся при создании маршрута, а промежуточные могут добавляться между ними.
  def initialize(first_station, last_station)
    @routes = [first_station, last_station]
    @first_station = @routes.first
    @last_station = @routes.last
  end

  #Может добавлять промежуточную станцию в список
  def add_station(station)
    @routes.push(station)
  end

  #Может удалять промежуточную станцию из списка
  def del_station(station)
    @routes.pop(station)
  end

  #Может выводить список всех станций по-порядку от начальной до конечной
  def show_stations
    @routes.each { |station| puts station.name }
  end
end
