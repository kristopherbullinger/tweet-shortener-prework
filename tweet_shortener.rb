def dictionary(word)
  dictionary = {
  'hello': 'hi',
  'to': '2',
  'two': '2',
  'too': '2',
  'for': '4',
  'be': 'b',
  'four': '4',
  'you': 'u',
  'at': '@',
  'and': '&'
  }
  word = (dictionary.keys.include? word) ? dictionary[word.to_sym] : word
end

def word_substituter(long_tweet)
  long_tweet = long_tweet.split(" ")
  shorter_tweet = long_tweet.collect do |word|
    dictionary(word.to_sym).to_s
  end
  shorter_tweet.join(" ")
end
