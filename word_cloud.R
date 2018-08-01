#clean up by removing stop words
google_tweets.text.corpus <- tm_map(google_tweets.text.corpus, function(x)removeWords(x,stopwords()))
amazon_tweets.text.corpus <- tm_map(amazon_tweets.text.corpus, function(x)removeWords(x,stopwords()))
facebook_tweets.text.corpus <- tm_map(facebook_tweets.text.corpus, function(x)removeWords(x,stopwords()))
tech_tweets.text.corpus <- tm_map(tech_tweets.text.corpus, function(x)removeWords(x,stopwords()))

library("wordcloud")
#generate wordcloud
wordcloud(google_tweets.text.corpus,min.freq = 10,colors=brewer.pal(8, "Dark2"),random.color = TRUE,max.words = 500)
wordcloud(amazon_tweets.text.corpus,min.freq = 10,colors=brewer.pal(8, "Dark2"),random.color = TRUE,max.words = 500)
wordcloud(facebook_tweets.text.corpus,min.freq = 10,colors=brewer.pal(8, "Dark2"),random.color = TRUE,max.words = 500)
wordcloud(tech_tweets.text.corpus,min.freq = 10,colors=brewer.pal(8, "Dark2"),random.color = TRUE,max.words = 500)

