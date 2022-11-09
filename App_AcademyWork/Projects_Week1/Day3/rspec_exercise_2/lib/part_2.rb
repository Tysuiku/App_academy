def palindrome?(str)
    backwards = ""
    str.each_char { |char| backwards = char + backwards}
    str == backwards
end

def substrings(str)
    substr = []
    (0...str.length).each do |start_idx|
    (start_idx...str.length).each do |end_idx|
    substr << str[start_idx..end_idx]
    end
    end

    substr
end

def palindrome_substrings(str)
    substr = substrings(str)
    pali_sub = []
    substr.each do |sub|
        if palindrome?(sub) && sub.length > 1
            pali_sub << sub
        end
    end

    pali_sub
end