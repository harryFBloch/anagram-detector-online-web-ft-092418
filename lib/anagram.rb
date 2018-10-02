# Your code goes here!
class Anagram
  attr_accessor :gram
  def initialize(gram)
    @gram = gram
  end
  
  def match(word_array)
    word_array.each {|element| 
      sorted1 = element.sort()
      sorted2 = @gram.sort()
      do return element if sorted1 == sorted2
    }
  end
end