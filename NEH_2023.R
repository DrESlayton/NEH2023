#### Script for text mining of NEH XML files #####

#### Instaling packages ######
# For adding in data and cleaning the corpus
install.packages("XML")
install.packages("tm")
install.packages("SnowballC")


# For visulizing the data 
install.packages("RColorBrewer")
install.packages("wordcloud")

library(XML)
library(tm)
library(SnowballC)
library(RColorBrewer)
library(wordcloud)

#### Load XML File #####

# Set working directory 
setwd("~/Desktop/NEH/NEH_GrantProducts")
getwd()

# Set the path to XML file
OpenAccessItems <- "NEH_OpenAccessItems.xml"

# Reading in the XML file
OpenAccessItems_content <- xmlParse(OpenAccessItems)

#### Getting to the text #### 

# Extracting text from the XML content
text <- sapply(xmlChildren(OpenAccessItems_content), function(x) xmlValue(x))

# Converting extracted text to character vector
text <- unlist(text)

# Creating Corpus for text mining
corpus <- Corpus(VectorSource(text))

# Delve into the 'corpus' 
inspect(corpus)

###### Corpus Cleaning #### 

#Text Preprocessing: Transformations are done via the tm_map() 
# function which applies (maps) a function to all elements 
# of the corpus

# Clean the corpus of white space
corpus_clean <- tm_map(corpus, stripWhitespace)

# Set characters to lower case
corpus_clean <- tm_map(corpus_clean, tolower)

# Remove 'Stop Words': Stop words are common words in a language that are typically filtered out or ignored when processing natural language text or conducting searches. These words are considered to be of little value in text analysis because they occur frequently and don't carry significant meaning on their own. Examples of stop words in English include "the," "and," "in," "of," "is," "at," "on," and "it."

corpus_clean <- tm_map(corpus_clean, removeWords, stopwords("english"))

# Stemming the values in the corpus 
# Stemming is a natural language processing technique that is used to reduce words to their base form, also known as the root form. 

corpus_clean <- tm_map(corpus_clean, stemDocument)

###### Term Document Matrix ####
# A common approach in text mining is to create a term-document matrix from a corpus.
# A document-term matrix is a mathematical matrix that describes the frequency of terms that occur in a collection of documents. 

dtm <- DocumentTermMatrix(corpus_clean)
inspect(dtm)

### Identifying the frequency of terms ###

# Identify the terms that apear more than 5 times 
findFreqTerms(dtm, 5)

# Identify the terms that apear more than 10 times
findFreqTerms(dtm, 10)

# Identify the assocations between concepts in the corpus
findAssocs(dtm, c("open"), c(0.2))

# Find the frequesncy of terms in the corpus
findFreqTerms(dtm, lowfreq = 0, highfreq = Inf)

### Parsing XML data to transfer to CSV #####

#Add XML file to transition to CSV
setwd("~/Desktop/NEH/NEH_Grants1990s")
Grants1990s <- "NEH_Grants1990s.xml"

# Parses an XML or HTML file or string containing XML/HTML content, and generates an R structure representing the XML/HTML tree.
Grants1990s <- xmlTreeParse("NEH_Grants1990s.xml")

# Extract the data from the parsed xml
records <- xmlToList(Grants1990s)

# Convert the list of records to a data frame
data_frame <- do.call(rbind, records)


# Write to a CSV file 
write.csv(data_frame, "Grants1990s.csv", row.names = FALSE)

# Cleaning of the above created CSV was conducted in Open Refine 


### Visualizing the corpus #####

##### Create a wordcloud from the corpus ####

wordcloud(corpus_clean, scale=c(5,0.5), max.words=100, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2"))



