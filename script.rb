def substrings(sentence, dictionary_arr)
    result = Hash.new(0)

    sentence_arr = sentence.split

    sentence_arr.each do |word|
        dictionary_arr.each do |substring|
            if word.downcase.include?(substring)
                result[substring] += 1
            end
        end
    end

    result
end

dictionary_arr = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary_arr)


