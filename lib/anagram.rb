# Your code goes here!
require 'pry'
class Anagram
  attr_accessor :gram
  
  def initialize(gram)
    @gram = gram
  end
  
  def match(word_array)
    return_array = []
    if word_array.length == 0 
      
    elsif word_array.length == 1
       if sort_word(@gram) == sort_word(word_array[0])
         return_array << word_array[0]
       end
    else
    word_array.each {|element| 
       if sort_word(element) == sort_word(@gram)
         return_array << element
       end
    }
    end
    return_array  
  end
  
  def sort_word(word)
   a = word.split("")
   a.sort()
  end
  
end



