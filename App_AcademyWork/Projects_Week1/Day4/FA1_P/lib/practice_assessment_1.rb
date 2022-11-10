# Define your methods here. 
def first_letter_vowel_count(sentence)
    vowels = "aeiou"
    count = 0.0
    words = sentence.split(" ") 
    words.each do |word|
        if vowels.include?(word[0].downcase)
            count += 1.0
        end
    end
    count
end

def count_true(arr, prc)
    count = 0 
    arr.each do |ele| 
       if prc.call(ele)
        count += 1
       end
    end
    count
end

def procformation(arr, prc1, prc2, prc3)
    result = []
    arr.each do |ele|
        if prc1.call(ele)
            result << prc2.call(ele)
        else
            result << prc3.call(ele)
        end
    end

    result
end

def array_of_array_sum(arr)
    arr.flatten.sum
end

def reverse(word)
    reversed = ""
    i = word.length - 1
    while i >= 0
    reversed += word[i]
    i -= 1
    end
    reversed
end

def selective_reverse(sentence)
    new_sentence = []
    vowels = "aeiou"
    words = sentence.split(" ")
    words.each do |word|
        if vowels.include?(word[0].downcase) || vowels.include?(word[-1].downcase)
            new_sentence << word
        else 
            new_sentence << reverse(word)
        end
    end
    new_sentence.join(" ")
end

def hash_missing_keys(hash, *args)
    missing_keys = []
    args.each do |arg|
        if hash[arg] == nil
            missing_keys << arg
        end
    end

    missing_keys
end

#testing

