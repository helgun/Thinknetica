#Заполнить массив числами от 10 до 100 с шагом 5

array = []

(10..100).step(5) do |i|
    array << i
end

puts array