def caesar_cipher(string, key)
    # split the string to convert it to an array
    str_arr = string.split("")
    str_arr.map! do |chr|
        # get the ascii code for every character
        code = chr.ord
        new_code = 0;
        # check if the character is lower case
        if code >= 97 && code <= 122
            new_code = (code + key - 97) % 26 + 97
        # check if the character is uppercase
        elsif code >= 65 && code <= 90
            new_code = (code + key - 65) % 26 + 65
        else
            new_code = code
        end
        # get the character from ascii code
        new_chr = new_code.chr
    end
    # convert the array to string
    result = str_arr.join("")
    puts result
end


caesar_cipher("What a string!",5)