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
        hash.each do |k, v|
            if v > 2 
                arr << k
            end
        end
    
    arr
end

# p counted_characters("that's alright folks") # ["t"]
# p counted_characters("mississippi") # ["i", "s"]
# p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
# p counted_characters("runtime") # []

#triplet_true?

def triplet_true(str)
    (0...str.length).each do |i|
        if str[i] == str[i+1] && str[i] == str[i+2]
            return true
        end
    end

    false
end

# p triplet_true('caaabb')        # true
# p triplet_true('terrrrrible')   # true
# p triplet_true('runninggg')     # true
# p triplet_true('bootcamp')      # false
# p triplet_true('e')             # false

def word_encode(str, hash)
    word = ""
    str.each_char do |char|
        if hash[char] != nil
            word += hash[char]
        else
            word += "?"
        end
    end

    word
end

def energetic_encoding(str, hash)
    newstr = []
    str.split(" ").each do |word|
        newstr << word_encode(word, hash)
    end

    newstr.join(" ")
end

# p energetic_encoding('sent sea',
#     'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
# ) # 'zimp ziu'

# p energetic_encoding('cat',
#     'a'=>'o', 'c'=>'k'
# ) # 'ko?'

# p energetic_encoding('hello world',
#     'o'=>'i', 'l'=>'r', 'e'=>'a'
# ) # '?arri ?i?r?'

# p energetic_encoding('bike', {}) # '????'

#uncompress
def uncompress(str)
    newstr = ""
    (0...str.length - 1).each do |i|
       newstr += (str[i] * str[i+1].to_i)
    end

    p newstr
end

# uncompress('a2b4c1') # 'aabbbbc'
# uncompress('b1o2t1') # 'boot'
# uncompress('x3y1x2z4') # 'xxxyxxzzzz'

#conjunct_select
def conjunct_select()

end

is_positive = Proc.new { |n| n > 0 }
is_odd = Proc.new { |n| n.odd? }
less_than_ten = Proc.new { |n| n < 10 }

p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive) # [4, 8, 11, 7, 13]
p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd) # [11, 7, 13]
p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd, less_than_ten) # [7]
convert_pig_latin
