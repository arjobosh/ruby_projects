# by joshua arber

=begin
    Caesar's Cipher
    --take in a string and a shift factor,
    then output the modified string.

    ex. caesar_cipher("What a string!", 5)
    => "Bmfy f xywnsl!"
=end

def caesar_cipher(string="", factor=0)
    cipher = []
    shift = factor

    # reduce shift factor within range
    if shift.negative?
        while shift < -26 do
            shift += 26
        end
    else
        while shift > 26 do
            shift -= 26
        end
    end

    # convert the string to an array of chars
    # walk down the string
    string.split(//).each do |ch|
        # convert each char to its int
        # add the shift factor to the int
        ch_int = ch.ord + shift

        # wrap from z to a and from a to z
        if is_upper(ch)
            if ch_int > "Z".ord
                ch_int -= 26
            elsif ch_int < "A".ord
                ch_int += 26
            end
        elsif is_lower(ch)
            if ch_int > "z".ord
                ch_int -= 26
            elsif ch_int < "a".ord
                ch_int += 26
            end
        elsif is_special(ch)
            # keep special chars
            ch_int = ch.ord
        else
            # element was not a letter or special
            ch_int = "?"
        end

        # convert the int back to a char
        # add the char to a new array of chars
        cipher.push(ch_int.chr)
    end

    # convert the array of chars to a string
    # same case is kept
    return cipher.join
end

def is_upper(char)
    char.ord >= "A".ord && char.ord <= "Z".ord
end

def is_lower(char)
    char.ord >= "a".ord && char.ord <= "z".ord
end

def is_letter(char)
    is_upper(char) || is_lower(char)
end

def is_special(char)
    !is_upper(char) && !is_lower(char)
end

def translation(msg, num)
    puts msg + " => " + caesar_cipher(msg, num)
end


#translation("Et tu, Brute?", 17)
#translation("Always has been", 17)
#translation("Veni, Vidi, Vici", 17)
#translation("AZAZAZazazaz", -300)
#translation("AZAZAZazazaz", 300)
