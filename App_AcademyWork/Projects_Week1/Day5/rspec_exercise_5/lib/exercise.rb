def zip(*array) 
    length = array.first.length
    newarr = []
    (0...length).each do |i|
    array.each do |arr|
            newarr << arr[i]
    end
    end
    newarr
end

def prizz_proc(arr, prc1, prc2)
    newarr = []
    arr.each do |ele|
        if (prc1.call(ele) && !prc2.call(ele)) || (!prc1.call(ele) && prc2.call(ele))
            newarr << ele
        end
    end

    newarr
end

def zany_zip(*array)

end

def maximum()

end