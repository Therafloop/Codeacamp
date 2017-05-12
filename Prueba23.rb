def canonical(word)
  word.chars.sort.join
end
def are_anagrams?(word1,word2)
  canonical(word1) == canonical(word2)
end
p are_anagrams?("bcdefj","fjbcde")
p [1,2,3,4,5,6].select {|i| i % 2 == 0}
def anagrams_for(word,array)
	array.select {|i| canonical(i) == canonical(word)}
end
p anagrams_for("abcd",["efgh","dcba","bacd"])