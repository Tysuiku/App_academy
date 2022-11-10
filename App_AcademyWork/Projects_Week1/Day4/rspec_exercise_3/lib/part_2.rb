def element_count(arr)
    hash = {}
    arr.each do |ele|
        if hash[ele] == nil
            hash[ele] = 1
        else 
            hash[ele] += 1
        end
    end
    hash
end

def char_replace!(str, hash)
    (0...str.length).each do |i|
        if hash[str[i]] != nil
            str[i] = hash[str[i]]
        end
    end
    str
end

def product_inject(nums)
    nums.inject { |acc, el| acc * el}
end