#require "pry"

 # returns substitute for word, or nil if no substitute
def dictionary(word)

   defs = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

   defs[word.downcase]
end


 def word_substituter(message)

   new_message = message.split(" ").collect do | word |
    word2 = dictionary(word)
    word2 == nil ? word : word2
  end.join(" ")

   #binding.pry

 end


 def bulk_tweet_shortener(tweets)

   tweets.each do |tweet|
    puts word_substituter(tweet)
  end

 end


 def selective_tweet_shortener(tweet)

     if tweet.length > 140
      return word_substituter(tweet)
    else
      return tweet
    end

 end


 def shortened_tweet_truncator(tweet)

   if tweet.length > 140
    return tweet[0..136] + "..."
  else
    return tweet
  end

 end
