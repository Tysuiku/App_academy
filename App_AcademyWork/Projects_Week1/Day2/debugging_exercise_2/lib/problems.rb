# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

#largest prime factor

def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end

    true
end

def largest_prime_factor(num)
    num.downto(2) do |i|
        if prime?(i) && num % i == 0
            return i
        end
    end
end
# unique characters

def all_chars(str)
    chars = {}
    str.each_char do |char|
        if  chars[char] == nil
            chars[char] = 1
        else 
            chars[char] += 1
        end
    end
    chars
end

def unique_chars?(str)
    list = all_chars(str)
    str.each_char do |char|
        if list[char] >= 2
            return false
        end
    end
    true
end

# dupe_indices

def dupe_indices(arr)
    indices = Hash.new { |h, k| h[k] = []}

    arr.each_with_index do |ele, i|
        indices[ele] << i 
    end

    indices.select { |key, val| val.length > 1}
end

# ana array

def ana_array(arr_1, arr_2)
    arr1 = {}
    arr2 = {}
    arr_1.each do |ele|
        if arr1[ele] == nil
            arr1[ele] = 1
        else 
            arr1[ele] += 1
        end
    end
    arr_2.each do |ele|
        if arr2[ele] == nil
            arr2[ele] = 1
        else 
            arr2[ele] += 1
        end
    end
    if arr1 == arr2 
        true
    else
        false
    end
end
