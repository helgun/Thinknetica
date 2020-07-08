#Заполнить массив числами фибоначчи до 100
a = 0
b = 1
until b > 100
    temp = a
    a = b
    b = temp + b
    puts a
end