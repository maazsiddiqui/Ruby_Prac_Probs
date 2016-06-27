# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)

  counter = []
  idx = 0
  
  while idx < string.length
  
    counter[idx] = 1
    idx2 = idx + 1
    
    while idx2 < string.length
      if string[idx] == string[idx2]
        counter[idx] = counter[idx] + 1
      end
      idx2 += 1
    end
    idx += 1
  end

  idx = 0
  max = 0
  place = 0

  while idx < string.length

    if max < counter[idx]
      max = counter[idx]
      place = idx
    end
  idx += 1
  end
  return([string[place], max])
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
puts(
  'most_common_letter("xxxasdxxxsadsaxxasdaxx") == ["x", 10]: ' +
  (most_common_letter('xxxasdxxxsadsaxxasdaxx') == ['x', 10]).to_s
)


Web Answer


# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  most_common_letter = nil
  most_common_letter_count = nil

  idx1 = 0
  while idx1 < string.length
    letter = string[idx1]
    count = 0

    idx2 = 0
    while idx2 < string.length
      if string[idx2] == letter
        count += 1
      end
      idx2 += 1
    end

    if (most_common_letter_count == nil) || (count > most_common_letter_count)
      most_common_letter = letter
      most_common_letter_count = count
    end

    idx1 += 1
  end

  return [most_common_letter, most_common_letter_count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)