dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)
    new_array = input.downcase.split
    output_hash = {}
    new_array.each do |element|
        dictionary.each do |dict_value|
            if element.include?(dict_value)
                if output_hash.has_key?(dict_value)
                    output_hash[dict_value] += 1
                else 
                    output_hash[dict_value] = 1
                end
            end
        end
    end
    puts output_hash
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)