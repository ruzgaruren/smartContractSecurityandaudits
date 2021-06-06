library(readr)
bitcoin <- read_csv("C:/Users/winds/Desktop/SON TESLÝM TARÝHLERÝ/CaNS 2 HAZIRAN/veriler incelenecek/bitcoin.csv")
View(bitcoin)

head(bitcoin,5)

str(bitcoin)

nrow(bitcoin)
ncol(bitcoin)

bit1 <-bitcoin[c(bitcoin$generatedCoin,bitcoin$txCount)]


head(bitcoin[bitcoin$txCount>"5", ], 10) 

bit2<-(bitcoin$generatedCoins )
bit2
bit3<-(bitcoin$txCount )
bit3
ggplot(data =bitcoin, aes(generatedCoins,txCount) )

par(mfrow = c(2,2))
plot(bitcoin$generatedCoins)
plot(bitcoin$generatedCoins,bitcoin$txCount)
plot(bitcoin$generatedCoins,bitcoin$txCount)
cor(bitcoin$generatedCoins,bitcoin$txCount) # coralation


par(mfrow = c(1,1))

plot(bitcoin$generatedCoins[bitcoin$txCount > "150"])

plot(bitcoin$txCount[bitcoin$generatedCoins > "5000"])

mean(bitcoin$blockSize)
mean(bitcoin$averageDifficulty)




#Single-variable plots Let’s continue with the bitcoin data
#Here are some basic single-variable plots.

par(mfrow = c(2,4)) # 
plot(bitcoin$fees)
with(bitcoin, hist(activeAddresses))
with(bitcoin, boxplot(generatedCoins))
plot(bitcoin$date)
plot(bitcoin$txtCount)
plot(bitcoin$blockSize,bitcoin$generatedCoins)
qqnorm(bitcoin$blockCount)
qqline(bitcoin$generatedCoins)
qqnorm(bitcoin$blockCount)
qqline(bitcoin$generatedCoins)


#Here’s the qplot call that does it all in one simple line

qplot(x=blockCount, y=blockSize, data=bitcoin,
      color = fees,
      xlab = "blockCount ",
      ylab = "blockSize"
)




ggplot(bitcoin, aes(x=blockCount, y=blockSize, color=fees)) +
  geom_point() + # Adds points (scatterplot)
  geom_smooth(method = "lm") + # Adds regression lines
  ylab("blockCount") + #
  xlab("blockSize") + # 
  ggtitle("Blockcount with block size ") 



