#Заполнить массив числами фибоначчи до 100

arr = []

a = 0
b = 1

while a < 100
  arr << a
  a, b = b, a + b
end
puts arr
