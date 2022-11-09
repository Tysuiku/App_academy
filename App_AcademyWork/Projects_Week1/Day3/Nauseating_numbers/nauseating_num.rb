#strange_sums
def strange_sums(nums)
    count = 0

    nums.each_with_index do |ele_1 , idx_1|
    nums.each_with_index do |ele_2 , idx_2|
        if idx_2 > idx_1 && ele_1 + ele_2 == 0
            count += 1
        end
    end
    end

    count
end

#p strange_sums([2, -3, 3, 4, -2])     # 2
#p strange_sums([42, 3, -1, -42])      # 1
#p strange_sums([-5, 5])               # 1
#p strange_sums([19, 6, -3, -20])      # 0
#p strange_sums([9])                   # 0

#pair_product
def pair_product(nums, product)
    nums.each_with_index do |ele_1 , idx_1|
    nums.each_with_index do |ele_2 , idx_2|
        if idx_2 > idx_1 && (ele_1 * ele_2) == product
            return true
        end
    end
    end

    false
end

#p pair_product([4, 2, 5, 8], 16)    # true
#p pair_product([8, 1, 9, 3], 8)     # true
#p pair_product([3, 4], 12)          # true
#p pair_product([3, 4, 6, 2, 5], 12) # true
#p pair_product([4, 2, 5, 7], 16)    # false
#p pair_product([8, 4, 9, 3], 8)     # false
#p pair_product([3], 12)             # false

#rampant_repeats
def rampant_repeats(str, hash)
    newstr = ""
    str.each_char do |char|
        if hash[char] != nil
            newstr += (char * hash[char])
        else
            newstr += char
        end
    end

    newstr
end

#p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
#p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
#p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
#p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'

#perfect_square?
def perfect_square(n)
    (1..n).any? { |i| (i * i) == n}
end

#p perfect_square(1)     # true
#p perfect_square(4)     # true
#p perfect_square(64)    # true
#p perfect_square(100)   # true
#p perfect_square(169)   # true
#p perfect_square(2)     # false
#p perfect_square(40)    # false
#p perfect_square(32)    # false
#p perfect_square(50)    # false

#anti_prime?
def num_factors(n)
    count = 0 
    (1..n).each do |i| 
        if n % i == 0
            count += 1
        end
    end
    count 
end

def anti_prime?(n)
    total_divisors = num_factors(n)
    (1...n).all? { |i| total_divisors > num_factors(i)}
end

# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false

#matrix_addition
def matrix_addition(matrix_1, matrix_2)
    matrix = Array.new(matrix_1.length) {[]}
    (0...matrix_1.length).each do |i|
    (0...matrix_1[0].length).each do |j|
        m1 = matrix_1[i][j]
        m2 = matrix_2[i][j]
        matrix[i] << m1 + m2
    end
    end

    matrix
end

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

#p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
#p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
#p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
#p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]

#mutual_factors

def mutual_factors(*numbers)
    mutual = []
        (1..numbers.min).each do |num|
            if numbers.all? {|number| number % num == 0}
                mutual << num
            end
        end
    
    mutual
end
# p mutual_factors(50, 30)            # [1, 2, 5, 10]
# p mutual_factors(50, 30, 45, 105)   # [1, 5]
# p mutual_factors(8, 4)              # [1, 2, 4]
# p mutual_factors(8, 4, 10)          # [1, 2]
# p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
# p mutual_factors(12, 24, 64)        # [1, 2, 4]
# p mutual_factors(22, 44)            # [1, 2, 11, 22]
# p mutual_factors(22, 44, 11)        # [1, 11]
# p mutual_factors(7)                 # [1, 7]
# p mutual_factors(7, 9)              # [1]

#tribonacci_number

def tribonacci_number()

end

p tribonacci_number(1)  # 1
p tribonacci_number(2)  # 1
p tribonacci_number(3)  # 2
p tribonacci_number(4)  # 4
p tribonacci_number(5)  # 7
p tribonacci_number(6)  # 13
p tribonacci_number(7)  # 24
p tribonacci_number(11) # 274