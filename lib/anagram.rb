

class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end


    def match(words_array)
        matches = []
        word_spl = @word.split("")
        word_sort = word_spl.sort
        words_array.each do |cand|
            cand_sort = cand.split("").sort
            if cand_sort == word_sort
                matches << cand
            end
        end
        matches
    end


end