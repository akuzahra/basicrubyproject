dictionary =  ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def subStrings(string, dictionary)

  result = {}
  stringArr = string.split(" ")

  dictionary.map { |word| 

    for i in 0..stringArr.length

      if (stringArr[i].to_s.include? word) && result[word]
        result[word] += 1
      end
     
      if (stringArr[i].to_s.include? word) && !result[word]
        result[word] = 1
      end 

    end
  }

  print result

end

 p subStrings("Howdy partner, sit down! How's it going?", dictionary)