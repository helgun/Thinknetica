class Station
  attr_reader :name

  #Имеет название, которое указывается при ее создании
  def initialize(name)
    @name = name
    @station = []
  end

  #Может принимать поезда (по одному за раз)
  def accept_train(train)
    @station << train
  end

  #Может возвращать список всех поездов на станции, находящиеся в текущий момент
  def show_all_trains
    @station.each { |train| puts train }
  end

  #Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
  def show_train(type)
    @station.each { |train| puts train.type }
  end

  #Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).
  def send_train(train)
    @station.pop(train)
  end

end
