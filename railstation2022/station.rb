class Station
  attr_reader :name, :parking

  #Имеет название, которое указывается при ее создании
  def initialize(name)
    @name = name
    @parking = []
  end

  #Может принимать поезда (по одному за раз)
  def accept_train(train)
    @parking << train
  end

  #Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
  def show_train(type)
    #@parking.find_all { |train| train.type == type }
    @parking.filter { |train| train.type == type }
  end

  #Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).
  def send_train(train)
    @parking.pop(train)
  end
  
end


