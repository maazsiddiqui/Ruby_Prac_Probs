# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)

    idx2 = 0

    while idx2 < 3
    
        idx = 0
        max = 0
        
        while idx < nums.length
        
            if max < nums[idx]
                max = nums[idx]
            end    
            idx += 1
        end
        
        idx = 0
        
        while idx < nums.length && idx2 < 2
            if nums[idx] == max
                nums[idx] = nums[nums.length - 1]
                nums.pop
                idx = 0
            end
            idx += 1
        end
        
        idx2 += 1
    end
    return(max)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4, 7]) == 3: ' +
  (third_greatest([2, 3, 7, 4, 7]) == 3).to_s
)
