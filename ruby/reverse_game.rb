def reverse_game(original)
    result = []
    while original.size >= 2
        result << original.pop
        result << original.shift
    end

    result << original[0] if !original.empty?

    return result
end

t = gets.to_i
t.times do
    (n, k) = gets.split(" ").map{|x| x.to_i}
    original = (0..n-1).to_a
    result = reverse_game(original)
    puts result.index(k)
end
