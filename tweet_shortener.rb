# Write your code here.

dictionary {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}

word_substituter(dictionary)
dictionary.each do |word, substitute|
  word.gsub(substitute)
end

  



