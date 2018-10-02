# Your code goes here!
require 'pry'
class Anagram
  attr_accessor :gram
  
  def initialize(gram)
    @gram = gram
  end
  
  def match(word_array)
    if word_array.length == 0 
      return []
    elsif word_array.length == 1
       if sort_word(@gram) == sort_word(word_array[0])
         binding.pry
         return word_array[0]
       end
    else
    word_array.each {|element| 
      sorted1 = sort_word(element)
      sorted2 = sort_word(@gram)
       if sorted1 == sorted2
         return element
       end
    }
  end
    return []  
  end
  
  def sort_word(word)
   a = word.split("")
   a.sort()
  end
  
end



