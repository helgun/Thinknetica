print "Введите день: "
dt = gets.to_i
print "месяц: "
mn = gets.to_i 
print "и год: "
yr = gets.to_i

days_in_a_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days_in_a_month[1] = 29 if yr % 400 == 0 || (yr % 4 ==0 && yr % 100 != 0)

sum = 0
(0..mn-2).each do |i|
  sum += days_in_a_month[i]
end
sum += dt

puts "Порядковый номер даты: #{sum}"
