
install.packages("twitteR")
install.packages("ROAuth")
library("NLP", lib.loc="~/R/win-library/3.3")
library("twitteR", lib.loc="~/R/win-library/3.3")
library("syuzhet", lib.loc="~/R/win-library/3.3")
library("tm", lib.loc="~/R/win-library/3.3")
library("SnowballC", lib.loc="~/R/win-library/3.3")
library("stringi", lib.loc="~/R/win-library/3.3")
library("topicmodels")
library("syuzhet", lib.loc="~/R/win-library/3.3")library("twitteR")
library("ROAuth")

consumer_key <- 'YOUR CONSUMER KEY'
consumer_secret <- 'YOUR CONSUMER SECRET KEY'
access_token <- 'YOUR ACCESS TOKEN'
access_secret <- 'YOUR ACCESS SECRET TOKEN'
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

tweets_g <- searchTwitter("#google", n=1000,lang = "en")
tweets_a <- searchTwitter("#amazon", n=1000,lang = "en")
tweets_f <- searchTwitter("#facebook", n=1000,lang = "en")
tweets_tech <- searchTwitter("#technology", n=1000,lang = "en")

amazon_tweets <- twListToDF(tweets_a)
google_tweets <- twListToDF(tweets_g)
facebook_tweets <- twListToDF(tweets_f)
tech_tweets <- twListToDF(tweets_tech)

