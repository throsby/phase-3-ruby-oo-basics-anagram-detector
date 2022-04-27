# Your code goes here!
class Anagram
    attr_accessor :str
    def initialize(str)
        self.str = str
    end

    def match(arr)
        arr_return = []
        arr.each do |word|
            p word, self.str
            # p word.split("")
            # p self.str.split("")
            if word.chars.sort == self.str.chars.sort
                arr_return << word
            end
        end
        return arr_return
    end
end

ba = Anagram.new('ba')
p ba.match(["ab", "frappe"])