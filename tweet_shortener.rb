# Write your code here.
#replace longer words with shorter representations two - 2
require 'pry'
def dictionary
  dic = {"hello" => "hi", \
          "to" => "2", \
          "two" => "2",\
          "too" => "2",\
          "for" => "4",\
          "four" => "4",\
          "be"  => "b",\
          "you" => "u",\
          "at" => "@", \
          "and" => "&"
        }
end

def word_substituter(tweet)
  keys = dictionary.keys
  array = tweet.split

  keys.each {|key|
    array.each_with_index {|element,i|
      if element.downcase == key.downcase
        array[i] = dictionary[key]
      end
      }
  }
  array.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet|
  puts word_substituter(tweet)
}
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  short = selective_tweet_shortener(tweet)
  length = selective_tweet_shortener(tweet).length
  if length > 140
    (length - 137).times {short.chop!}
    #binding.pry
    short = short + "..."
  end
  short
end
