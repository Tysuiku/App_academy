def is_prime?(n)
    if n < 2 
       return false
    end
    (2...n).each do |i|
        if n % i == 0
            return false
        end
    end
    true
end

def nth_prime(n)
    i = 1
    count = 0
    while count < n  
        i += 1
        if is_prime?(i)
            count += 1
        end
    end
    i
end

def prime_range(min, max)
    primes = []
    (min..max).map do |num| 
        if is_prime?(num) 
            primes << num
        end
    end
    primes
end