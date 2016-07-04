# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  
  string = ""
  
  num_string = num.to_s
  
  idx = 0
  
  while idx < num_string.length
  
      if (idx == 0) && (num_string[idx].to_i)%2 != 0
        string = (num_string[idx].to_s) + "-"

      elsif idx > 0 && idx < num_string.length - 1 && (num_string[idx].to_i)%2 != 0
      
          if string[string.length - 1] == "-"
            string = string + (num_string[idx].to_s) + "-"
          else
            string = string + "-" + (num_string[idx].to_s) + "-"
          end
      
      elsif idx == num_string.length - 1 && (num_string[idx].to_i)%2 != 0 && string[string.length - 1] != "-"
        
        string = string + "-" + num_string[idx].to_s
      
      else 
        string = string + num_string[idx] 
        
      end
      idx += 1
  end
  return string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
