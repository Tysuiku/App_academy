def my_map(arr, &prc)
    new_arr = []
    arr.each { |ele| new_arr << prc.call(ele) }
    new_arr
end

def my_select(arr, &prc)
    selected = []
    arr.each do |ele| 
        if prc.call(ele) == true
            selected << ele
        end
    end

    selected
end

def my_count(arr, &prc)
    count = 0
    arr.each do |ele|
        if prc.call(ele) == true
            count += 1
        end
    end

    count
end

def my_any?(arr, &prc)
    arr.each do |ele|
        if prc.call(ele) == true
            return true
        end
    end
    false
end

def my_all?(arr, &prc)
     arr.each do |ele|
        if prc.call(ele) != true 
            return false
        end
     end
     true
end

def my_none?(arr, &prc)
    arr.each do |ele|
        if prc.call(ele) == true
            return false
        end
    end
    true
end