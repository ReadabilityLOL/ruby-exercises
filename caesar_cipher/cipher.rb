#shifts letters by given amount when given a string
def cipher(string, shift)
  caps_letters = ("A".."Z").to_a #array for caps
  lower_letters = ("a".."z").to_a#array for lowercase
  ret_string = ""
  string_array = string.split "" #converts string to array
  string_array.each do |item|#iterate through string 
    if caps_letters.include?(item)# if caps includes items
      ret_string << caps_letters[(caps_letters.index(item) + shift)%26]
    elsif lower_letters.include?(item)#if lower includes items
      ret_string << lower_letters[(lower_letters.index(item) + shift)%26]
    else
      ret_string << item# if neither, just append to string
    end
  end
  ret_string
end

puts cipher("Hi! 1 z", 27)
puts cipher("What a string!", 5)

