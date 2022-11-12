#duos

def duos(str)
    count = 0
        (0...str.length - 1).each do |i|
            if str[i] == str[i+1] 
                count += 1
            end
        end

    count 
end

# p duos('bootcamp')      # 1
# p duos('wxxyzz')        # 2
# p duos('hoooraay')      # 3
# p duos('dinosaurs')     # 0
# p duos('e')             # 0

#sentence_swap
def sentence_swap(sentence, hash)
    newsen = []
    sentence.split(" ").each do |word|
        if hash[word] != nil
            newsen << hash[word]
        else 
            newsen << word
        end
    end

    newsen.join(" ")
end

# p sentence_swap('anything you can do I can do',
#     'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
# ) # 'nothing you shall drink I shall drink'

# p sentence_swap('what a sad ad',
#     'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
# ) # 'make a happy ad'

# p sentence_swap('keep coding okay',
#     'coding'=>'running', 'kay'=>'pen'
# ) # 'keep running okay'

#hash_mapped
def hash_mapped(hash, prc, &block)
    newhash = {}
    hash.each do |k, v|
        newhash[block.call(k)] = prc.call(v)
    end
    newhash
end

# double = Proc.new { |n| n * 2 }
# p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# # {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

# first = Proc.new { |a| a[0] }
# p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# # {25=>"q", 36=>"w"}

#counted_characters
def char_count(str)
    hash = {}
    str.each_char do |char|
        if hash[char] == nil
            hash[char] = 1
        else 
            hash[char] += 1
        end
    end

    hash
end

def counted_characters(str)
    hash = char_count(str)
    arr = []
        str.each_char do |char|
            if hash[char] > 2
                arr << char
            end
        end
    
    arr
end

p counted_characters("that's alright folks") # ["t"]
p counted_characters("mississippi") # ["i", "s"]
p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
p counted_characters("runtime") # []