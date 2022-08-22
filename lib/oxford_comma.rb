def oxford_comma(array)
    if array.length == 1
        array.join
    elsif array.length == 2
        array.join(' and ')
    elsif array.length > 2
        range = 1..array.length-2
        empty = []
        arr_range = range.to_a
        for i in arr_range
            empty.push(array[i-1])
        end
        empty.join(', ') + ', ' + array[-2] + ', ' + 'and ' + array[-1]
        # binding.pry
    end
end

puts oxford_comma(["kiwi", "durian", "starfruit", "mangos", "dragon fruits"])