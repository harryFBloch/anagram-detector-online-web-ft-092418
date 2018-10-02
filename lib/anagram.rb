# Your code goes here!
class Anagram
  attr_accessor :gram
  def initialize(gram)
    @gram = gram
  end
  
  def match(word_array)
    word_array.each {|element| 
      sorted1 = sort_word(element)
      sorted2 = sort_word(@gram)
       if sorted1 == sorted2
         return element
       end
    }
    return []
  end
  
  def sort_word(word)
    word.split.sort
  end
end

