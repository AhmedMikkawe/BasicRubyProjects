def sub_strings(str, arr)
    hash = {}
    new_str = str.downcase
    arr.each do |sub|
        hash[sub] = new_str.scan(/(?=#{sub})/).count if new_str.include?(sub)
    end
    puts hash
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sub_strings("below", dictionary)
sub_strings("Howdy partner, sit down! How's it going?", dictionary)
