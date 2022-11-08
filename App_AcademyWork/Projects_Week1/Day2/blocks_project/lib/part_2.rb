def word_cap?(word)
    if word == word[0].upcase + word[1..word.length-1].downcase
        true
    else 
        false
    end
end

def all_words_capitalized?(words)
    words.all? { |word| word_cap?(word)}
end

def no_valid_url?(urls)
    valid_ends = [".com",".net",".io",".org"]

    urls.none? do |url|
        valid_ends.any? { |ends| url.include?(ends)}
    end
end

def any_passing_students?(students)
    students.any? {|student| student[:grades].sum / student[:grades].length >= 75}
end
