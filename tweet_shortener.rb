# Write your code here.
def dictionary
  dictionary_hash = {
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

def word_substituter( tweet )
  
  tweet_array = tweet.split(" ")
  dictionary_hash = dictionary
  counter=0
  replacement_word=""
  tweet_array.each do | word |
  if replacement_word=dictionary[word.downcase] #if true the key exists
      tweet_array[counter]=replacement_word  
  end
    counter+=1
  end
  new_tweet=tweet_array.join(" ")

end

def bulk_tweet_shortener( tweets )

  tweets.each do | tweet |
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener( tweet )
  new_tweet=tweet
  if tweet.length > 140
    new_tweet=word_substituter( tweet )
  end
  new_tweet
end

def shortened_tweet_truncator( tweet )
  new_tweet=tweet
  if tweet.length > 140
    new_tweet=word_substituter( tweet )
    if new_tweet.length > 140
    new_tweet=new_tweet[0..136]
    new_tweet+="..."
    end
  end
  new_tweet
end

