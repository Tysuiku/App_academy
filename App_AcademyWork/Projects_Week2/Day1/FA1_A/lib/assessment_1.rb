def my_map!(arr, &prc)
    new_arr = []
    arr.each do |ele|
        new_arr << prc.call(ele)
    end

    arr.each_with_index do |ele, i|
        arr[i] = new_arr[i]
    end

    arr
end

arr_1 = [1,2,3,4]
p my_map!(arr_1) { |n| n * n }

def two?(arr, &prc)
    count = 0
    arr.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end

    count == 2
end

def nor_select(arr, prc1, prc2)
    new_arr = []
    arr.each do |ele|
        if !prc1.call(ele) && !prc2.call(ele)
            new_arr << ele
        end
    end

    new_arr
end

def array_of_hash_sum(arr)
    sum = 0
    arr.each do |hash|
        hash.each do |k, v|
            sum += v 
        end
    end

    sum
end

def first_vowel(word)
    vowels = "aeiou"
    (0...word.length).each do |i|
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end
    end

    word
end

def slangify(sentence)
    new_sen = []
    words = sentence.split(" ")
        words.each do |word|
           new_sen << first_vowel(word)
        end

    new_sen.join(" ")
end

def char_counter(str, *args)
    obj = {}
    args.each { |ele| obj[ele] = 0 }
  
    str.each_char do |ele|
      if obj[ele]
        obj[ele] += 1
      else
        if args.length < 1
          obj[ele] = 1
        end
      end
    end
    obj
  end