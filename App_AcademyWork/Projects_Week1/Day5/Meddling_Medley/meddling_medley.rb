#duos

def duos(str)
    count = 0
        (0...str.length).each do |i|
            if str[i] = str[i+1] 
                count += 1
            end
        end

    count 
end

p duos('bootcamp')      # 1
p duos('wxxyzz')        # 2
p duos('hoooraay')      # 3
p duos('dinosaurs')     # 0
p duos('e')             # 0