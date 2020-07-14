=begin
Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу
и кол-во купленного товара (может быть нецелым числом). 
Пользователь может ввести произвольное кол-во товаров до тех пор, 
пока не введет "стоп" в качестве названия товара. На основе введенных данных требуетеся:
Заполнить и вывести на экран хеш, ключами которого являются названия товаров, 
а значением - вложенный хеш, содержащий цену за единицу товара и 
кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
=end

cart = Hash.new("nothin here")
sum = 0

loop do
    puts "Корзина"
    puts "Введите название товара:"
    product_input = gets.chomp
    break if product_input == "stop"

    puts "Введите кол-во:"
    product_qty_input = gets.to_f

    puts "Введите цену:"
    product_price_input = gets.to_f

    sum += product_price_input * product_qty_input

    cart[product_input] = {price: product_price_input, quantity: product_qty_input}
    cart.each do |k, v|
    puts "Cart:"
    puts "#{k} - #{v} Total: #{v[:price] * v[:quantity]}"
    end
    puts "Total: #{sum}"
end
