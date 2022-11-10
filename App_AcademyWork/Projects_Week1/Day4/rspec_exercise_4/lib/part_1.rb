def my_reject(arr, &prc)
    newarr = []
    arr.each do |ele|
        if prc.call(ele) != true
            newarr << ele
        end
    end

    newarr
end

def my_one?(arr, &prc)
    count = 0
    arr.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end

    if count == 1
        true
    else
        false
    end
end

def hash_select(hash, &prc)
    newhash = {}
    hash.each do |k, v|
        if prc.call(k,v)
            newhash[k] = v
        end
    end

    newhash
end

def xor_select(arr, prc1, prc2)
    newarr = []
    arr.each do |ele|
        if (prc1.call(ele) || prc2.call(ele)) && !(prc1.call(ele) && prc2.call(ele))
            newarr << ele
        end
    end

    newarr
end

def proc_count(n, arr)
    count = 0
    arr.each do |prc|
        if prc.call(n)
            count += 1
        end
    end

    count
end