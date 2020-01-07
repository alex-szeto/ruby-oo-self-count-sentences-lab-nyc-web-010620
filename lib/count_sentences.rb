require 'pry'

class String

  def sentence?
    if self.split("")[-1] == "."
      return true
    end
    return false
  end

  def question?
    if self.split("")[-1] == "?"
      return true
    end
    return false
  end

  def exclamation?
    if self.split("")[-1] == "!"
      return true
    end
    return false
  end

  def count_sentences
    previous = false
    count = 0
    self.split("").each{ |char|
      if char == "." || char == "?" || char == "!" 
        if previous == false
          count += 1
          previous = true
        end
      else
        previous = false
      end
    }
    return count
  end
end