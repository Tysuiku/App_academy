def partition(arr, num) 
    less = []
    greater = []
    final = []
    arr.each do |ele| 
        if ele >= num 
            greater << ele
        else 
            less << ele
        end
    end
    final << less  
    final << greater 
    final
end

def merge(hash1, hash2)
    hash = {}
    hash1.each { |k, v| hash[k] = v}
    hash2.each { |k, v| hash[k] = v}
    hash
end

def star_vowels(word)
    vowels = "aeiou"
    censored = ""

    word.each_char do |char|
        if vowels.include?(char.downcase)
            censored += "*"
        else 
            censored += char
        end
    end

    censored
end

def censor(str, arr)
    words = str.split(" ")
    censored = []

    words.each do |word|
        if arr.include?(word.downcase) 
            censored << star_vowels(word)
        else 
            censored << word
        end
    end

    censored.join(" ")
end

def power_of_two?(num)
    product = 1

    while product < num
        product *= 2
    end

    product == num
end