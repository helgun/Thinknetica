class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def get_train(train)
    @trains << train
  end

  def show_trains
    @trains.group_by(&:type).transform_values(&:count).each { |k, v| puts "#{k} - #{v} "}
  end

  def send_train(train_name)
    puts "Поезд #{train_name.number} отправлен" if @trains.include?(train_name)
    @trains.delete(train_name)
  end
end
