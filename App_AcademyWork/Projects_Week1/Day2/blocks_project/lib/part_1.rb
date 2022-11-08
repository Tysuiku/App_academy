def select_even_nums(nums)
    nums.select { |num| num.even? }
end

def reject_puppies(arr) 
    arr.reject { |dog| dog["age"] <= 2}
end

def count_positive_subarrays(arr)
    arr.count { |subarr| subarr.sum > 0 }
end

def aba_translate(word)
    new_word = ""
    vowels = "aeiou"

    word.each_char do |char|
        if vowels.include?(char)
            new_word += char + "b" + char
        else 
            new_word += char
        end
    end

    new_word
end

def aba_array(arr) 
    arr.map { |word| aba_translate(word)}
end

