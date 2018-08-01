
google_text<- google_tweets$text
amazon_text<- amazon_tweets$text
facebook_text<- facebook_tweets$text
tech_text<- tech_tweets$text


#convert all text to lower case
google_text<- tolower(google_text)
amazon_text<- tolower(amazon_text)
facebook_text<- tolower(facebook_text)
tech_text<- tolower(tech_text)

# Replace blank space (“rt”)
google_text <- gsub("rt", "", google_text)
amazon_text <- gsub("rt", "", amazon_text)
facebook_text <- gsub("rt", "", facebook_text)
tech_text <- gsub("rt", "", tech_text)

# Replace @UserName
google_text <- gsub("@\\w+", "", google_text)
amazon_text <- gsub("@\\w+", "", amazon_text)
facebook_text <- gsub("@\\w+", "", facebook_text)
tech_text <- gsub("@\\w+", "", tech_text)


# Remove punctuation
google_text <- gsub("[[:punct:]]", "", google_text)
amazon_text <- gsub("[[:punct:]]", "", amazon_text)
facebook_text <- gsub("[[:punct:]]", "", facebook_text)
tech_text <- gsub("[[:punct:]]", "", tech_text)


# Remove links
google_text <- gsub("http\\w+", "", google_text)
amazon_text <- gsub("http\\w+", "", amazon_text)
facebook_text <- gsub("http\\w+", "", facebook_text)
tech_text <- gsub("http\\w+", "", tech_text)

# Remove tabs
google_text <- gsub("[ |\t]{2,}", "", google_text)
amazon_text <- gsub("[ |\t]{2,}", "", amazon_text)
facebook_text <- gsub("[ |\t]{2,}", "", facebook_text)
tech_text <- gsub("[ |\t]{2,}", "", tech_text)


# Remove blank spaces at the beginning
google_text <- gsub("^ ", "", google_text)
amazon_text <- gsub("^ ", "", amazon_text)
facebook_text <- gsub("^ ", "", facebook_text)
tech_text <- gsub("^ ", "", tech_text)

# Remove blank spaces at the end
google_text <- gsub(" $", "", google_text)
amazon_text <- gsub(" $", "", amazon_text)
facebook_text <- gsub(" $", "", facebook_text)
tech_text <- gsub(" $", "", tech_text)

library("tm")
#create corpus
google_tweets.text.corpus <- Corpus(VectorSource(google_text))
amazon_tweets.text.corpus <- Corpus(VectorSource(amazon_text))
facebook_tweets.text.corpus <- Corpus(VectorSource(facebook_text))
tech_tweets.text.corpus <- Corpus(VectorSource(tech_text))

