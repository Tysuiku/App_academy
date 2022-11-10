def proper_factors(n)
    nums = []
    (1...n).each do |i|
        if n % i == 0
            nums << i
        end
    end
    nums
end

def aliquot_sum(n)
    proper_factors(n).sum
end

def perfect_number?(n)
    n == aliquot_sum(n)
end

def ideal_numbers(n)
    nums = []
  
    i = 1
    while nums.length < n
      nums << i if perfect_number?(i)
      i += 1
    end
  
    nums
  end