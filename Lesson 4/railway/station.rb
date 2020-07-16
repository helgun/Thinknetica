class Station

  def initialize(name)
    @name = name
    @trains = []
  end

  def get_train(train)
    @trains = train
  end

  def show_trains
    @@trains.each { |train_name, type| puts "#{train_name} - #{type}" }
  end

  def send_train(train_name)
    puts "Поезд #{train_name} отправлен" if @@trains.include?(train_name)
    @@trains.delete(train_name)
  end
end


