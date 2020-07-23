class Station

  def initialize(name)
    @name = name
    @trains = []
  end

  def get_train(train)
    @trains << train
  end

  def show_trains
    @trains.each { |train| puts train.number }
  end

  def send_train(train_name)
    puts "Поезд #{train_name.number} отправлен" if @trains.include?(train_name)
    @trains.delete(train_name)
  end
end
