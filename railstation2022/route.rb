class Route
  attr_reader :first_station, :last_station, :way_stations
  #Имеет начальную и конечную станцию, а также список промежуточных станций.
  #Начальная и конечная станции указываютсся при создании маршрута, а промежуточные могут добавляться между ними.
  def initialize(first_station, last_station)
    @way_stations = [first_station, last_station]
    @first_station = first_station
    @last_station = last_station
  end

  def first_station
    @way_stations.first
  end

  def last_station
    @way_stations.last
  end

  #Может добавлять промежуточную станцию в список
  def add_station(station)
    @way_stations.push(station)
  end

  #Может удалять промежуточную станцию из списка
  def del_station(station)
    @way_stations.pop(station)
  end
end
