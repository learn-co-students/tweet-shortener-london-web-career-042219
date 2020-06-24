def dictionary
  {"hello" => 'hi',
  "to" => '2',
  "too"  => '2',
  "two" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"}
end

def word_substituter(tweet)
  words = tweet.split(" ")
  dict = dictionary()
  words.collect do |word|
    return_word = word
    if dict.key?(word.downcase)
      return_word = dict[word.downcase]
    end
    return_word
  end.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if(tweet.length > 140)
    return word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  if(tweet.length > 140)
    return tweet[0..136] + "..."
  end
  tweet
end