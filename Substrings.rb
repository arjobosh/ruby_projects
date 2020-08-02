# By josh arber

=begin
    Substrings
    --method that takes a word as first argument and an 
    array of valid substrings as second argument. returns
    a hash lasting each substring that was found in the
    original string and how many times it was found.

    # Assignment from The Odin Project
=end

dictionary_one = ["below","down","go","going","horn",
    "how","howdy","it","i","low","own","part",
    "partner","sit"]

def substrings(string, dictionary)

    # initialize word=frequency hash
    substr_freq = {}
    dictionary.each { |word| substr_freq[word] = 0 }

    # strip string of special chars and downcase it
    letters_only = string.gsub(/[^0-9A-Za-z]/, "").downcase

    # for each word, split string
    # the count of the resultant array - 1 is the frequency
    # if count is only 1 and the string is not the same as
    #   the original, frequency is 1
    dictionary.each do |word|
        split_string = letters_only.split(word)
        if split_string.count == 1 && !split_string.join.eql?(letters_only)
            substr_freq[word] = 1
        else
            substr_freq[word] = split_string.count - 1
        end
    end

    # nonzero hash
    nonzero_substr = {}

    # only add nonzero words to the new hash
    substr_freq.each do |word, freq|
        if !freq.zero?
            nonzero_substr[word] = freq
        end
    end

    p nonzero_substr
end

substrings("Howdy partner, sit down! How's it going?", dictionary_one)