# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
    
    newstring = []
    total_letters = string.length - 1
    
    while total_letters >= 0
        newstring.push(string[total_letters])
        total_letters = total_letters - 1
    end
    
    return newstring.join
    
end

# Tests
puts('reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s)
puts('reverse("a") == "a": ' + (reverse("a") == "a").to_s)
puts('reverse("") == "": ' + (reverse("") == "").to_s)
