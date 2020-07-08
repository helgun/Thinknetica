vowels = ["a", "e", "i", "o", "u"]

("a"..."z").each_with_index do |letter, index|
    if vowels.include?(letter)
        puts "#{letter} - #{index + 1}"
    end
end