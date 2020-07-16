class Station

  def initialize(name)
    @name = name
    @trains = []
  end

  def get_train(train)
    @trains = train
  end

  def show_trains
    @trains
  end

  def send_train(train)
    puts "Поезд #{train} отправлен"
    @trains.delete(train)
  end
end


