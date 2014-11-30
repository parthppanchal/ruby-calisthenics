module FunWithStrings
  def palindrome?
    clean_string = self.gsub(/\W/, '').downcase
    clean_string == clean_string.reverse
  end
  def count_words
    words = self.gsub(/\W/, ' ').downcase.split
    count = Hash.new
    words.each do |word|
      if count.has_key?(word)
        count[word] += 1
      else
        count[word] = 1
      end
    end
    count
  end
  def anagram_groups
    words = self.gsub(/\W/, ' ').split
    groups = Hash.new
    words.each do |word|
      fingerprint = word.downcase.chars.sort.join
      if groups.has_key?(fingerprint)
        groups[fingerprint] << word
      else
        groups[fingerprint] = [word]
      end
    end
    groups.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
