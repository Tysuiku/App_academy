def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(str, &prc)
    new_str = []
    str.split(" ").each { |word| new_str << prc.call(word)}
    new_str.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    if prc1.call(num) > prc2.call(num)
        prc1.call(num)
    else
        prc2.call(num)
    end
end

def and_selector(arr, prc1, prc2)
    selected = []
    arr.each do |ele|
        if prc1.call(ele) && prc2.call(ele)
            selected << ele
        end
    end

    selected
end

def alternating_mapper(arr, prc1, prc2)
    result = []
    arr.each_with_index do |n, i|
        if i % 2 == 0 
            result << prc1.call(n)
        else 
            result << prc2.call(n)
        end
    end

    result
end