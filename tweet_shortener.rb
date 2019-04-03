def dictionary
  words_to_shorten = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweet)
  tweet.split.collect do |x|
    if dictionary.keys.include?(x.downcase)
      x = dictionary[x.downcase]
    else
      x
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.collect do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140
    answer = word_substituter(tweet).chars[0..136].push("...").join("")
  else
    tweet
  end
end
