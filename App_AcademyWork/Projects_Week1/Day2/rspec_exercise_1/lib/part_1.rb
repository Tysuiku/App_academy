def average(num_1, num_2)
    (num_1 + num_2) / 2.0
end

def average_array(arr)
    arr.sum / (arr.length * 1.0)
end

def repeat(str, num)
    new_str = ""
    num.times {new_str += str}
    new_str
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    new_string = []
    words = str.split(" ")
    words.each_with_index do |word, i|
        if i % 2 == 0 
            new_string << word.upcase
        else
            new_string << word.downcase
        end
    end
    new_string.join(" ")
end