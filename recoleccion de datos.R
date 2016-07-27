library(jsonlite)
library(RJSONIO)
library(httr)
library(plyr)
library(sqldf)
library(data.table)

Url_cards <- "https://omgvamp-hearthstone-v1.p.mashape.com/cards"
hs_key <- "947XXffLBGl2Nm0p1VzildjsnivqLFP6bXBn3"
hs_key <- "UvBb4piD5Gmshx8YowII8DweQjCDp1haaSPjsnljJz5wGJeQqC"

resp <- GET(Url_cards, add_headers("X-Mashape-Key" = hs_key,"Accept" = "application/json"))
json <- content(resp, type="application/json")

df <- data.frame(matrix(unlist(json), byrow=T),stringsAsFactors=FALSE)
View(df)
head(unlist(json))
basic <- unlist(json)
head(basic)
remove(basic)
remove(df)
remove(hs_json)
remove(req)
head(unlist(json$Basic))
basic <- unlist(json$Basic)
head(basic)
df_basic <- as.data.frame(json$Basic)
remove(df_basic)
remove(basic)
test <- do.call("rbind.fill", lapply(json, as.data.frame))
df_basic <- as.data.frame(list(json$Basic))
class(json)
summary(json$Basic)
as.data.frame(json$Basic[2])
length(json)
length(json$Basic)
test1 <- as.data.frame(json$Basic[1])
test2 <- as.data.frame(json$Basic[2])
rbind.fill(test1,test2)
test <- rbind.fill(test1,test2)
test3 <- as.data.frame(json$Basic[3])
test <- rbind.fill(test,test3)
basic <- merge_dif_lists(json$Basic)
merge_dif_lists(json$Basic)
test <- merge_dif_lists(json$Basic)
View(test)
basic <- merge_dif_lists(json$Basic)
classic <- merge_dif_lists(json$Classic)
remove(df_basic)
remove(test)
remove(test1)
remove(test2)
remove(test3)
Credits <- merge_dif_lists(json$Credits)
resp <- GET(Url_cards, add_headers("X-Mashape-Key" = hs_key,"Accept" = "application/json"))
json <- content(resp, type="application/json")

basic <- merge_dif_lists(json$Basic)
classic <- merge_dif_lists(json$Classic)
Credits <- merge_dif_lists(json$Credits)
Naxxramas <- merge_dif_lists(json$Naxxramas)
GvG <- merge_dif_lists(json$`Goblins vs Gnomes`)
BM <- merge_dif_lists(json$`Blackrock Mountain`)
GT <- merge_dif_lists(json$`The Grand Tournament`)
LoE <- merge_dif_lists(json$`The League of Explorers`)
WOTG <- merge_dif_lists(json$`Whispers of the Old Gods`)
cards <- rbind.fill(basic,classic,Naxxramas,GvG,BM,GT,LoE,WOTG)
standardcards <- rbind.fill(basic,classic,BM,GT,LoE,WOTG)

boxplot(subset(standardcards$cost, standardcards$playerClass=="Warrior"))
summary(subset(standardcards$cost, standardcards$playerClass=="Warrior"))
summary(subset(standardcards$cost, standardcards$playerClass!="Dream"))
boxplot(subset(standardcards$cost, standardcards$playerClass!="Dream"))
boxplot(subset(standardcards$cost, !(standardcards$playerClass=="Dream")))

boxplot(standardcards$cost~standardcards$playerClass,col=standardcards$playerClass)
standardcards$playerClass[which(standardcards$playerClass=="Dream")]
standardcards$playerClass[which(standardcards$playerClass=="Dream")] <- NA
boxplot(standardcards$cost~standardcards$playerClass,col=standardcards$playerClass)
unique(standardcards$playerClass)
unique(standardcards$playerClass[!which((standardcards$playerClass=="Dream"))])
standardcards$playerClass <- as.character(standardcards$playerClass)
standardcards$playerClass <- as.factor(standardcards$playerClass)
boxplot(standardcards$cost~standardcards$playerClass,col=standardcards$playerClass)

subset(standardcards,standardcards$name %in% "cabal")
subset(standardcards,standardcards$name %in% "Cabal")
subset(standardcards,standardcards$name %in% "cabalist ")
subset(standardcards,standardcards$name %in% "cabalist")
standardcards[like(standardcards$name,"Cabalist")]
subset(standardcards,standardcards$name %like% "cabalist")

sqldf("select * from standardcards where name like 'cabalist'")
sqldf("select * from standardcards where name like '%cabalist%'")
standardcards[standardcards$cardId=="OG_090",]
standardcards[standardcards$cardId=="OG_090",1:5]
standardcards[standardcards$cardId=="OG_090",1:8]
standardcards[standardcards$playerClass=="Mage" & standardcards$type=="Spell",1:8]
standardcards[standardcards$playerClass=="Mage" & standardcards$type=="Spell",2]
magias_mage  <- standardcards[standardcards$playerClass=="Mage" & standardcards$type=="Spell",2:6]
magias_mage[magias_mage$text %like% "Freeze",]
plot(magias_mage)

magias_mage[magias_mage$text %like% "Freeze",]
magias_mage$Freeze[magias_mage$text %like% "Freeze"] <- 1
plot(magias_mage$Freeze)

View(magias_mage)
magias_mage <- na.omit(magias_mage)
magias_mage  <- standardcards[standardcards$playerClass=="Mage" & standardcards$type=="Spell",2:6]
magias_mage1 <- na.omit(magias_mage)
View(magias_mage1)
magias_mage1[magias_mage1$text %like% "Freeze",]
