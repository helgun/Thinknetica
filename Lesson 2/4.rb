vowels = ["a", "e", "i", "o", "u"]

("a"..."z").each_with_index(1) do |letter, index|
    if vowels.include?(letter)
        puts "#{letter} - #{index}"
    end
end
