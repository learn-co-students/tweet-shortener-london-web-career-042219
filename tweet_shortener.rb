# Write your code here.

def dictionary
  shortened_words = {
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
end

def word_substituter(tweet)
  new_tweet = []
  words = tweet.split(" ")
  words.each do |word|
    if dictionary.keys.include?(word.downcase)
      new_tweet << (dictionary[word.downcase])
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).to_s.length > 140
    selective_tweet_shortener(tweet)[0..136]+"..."
  else
    tweet
  end
end
