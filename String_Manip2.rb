# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  
  letter = []
  idx = 0
  
  while idx < string.length
  
    idx2 = idx + 1
  
    while idx2 < string.length
  
      if string[idx] == string[idx2]
        
        letter.push(string[idx])
        
        idx3 = 0
        
        while idx3 < letter.length - 1
          
          if letter[idx3] == string[idx]
            
            letter.pop
            
          end
          
          idx3 += 1  
        end
        
      end
       
       idx2 += 1
       
    end   
       
    idx += 1
    
  end
  
  return letter.length
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
