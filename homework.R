setwd("~/Desktop")
data<-read.csv('waterstats.csv')
head(data)
summary <- summarySE(waterstats, measurevar = "avgdailypercent", groupvars = "status")
table(summary$avgdailypercent)
barplot((summary$avgdailypercent), 
        ylab='Percent body weight lost', 
        main= 'Waterstats Data',
        xlab= 'Reproductive Status', 
        ylim = c(0, 9),
        col = c("coral", "green", "blue", "purple"),
        legend("topright", legend=c("EP", "EV", "LP", "LV"), col = c("coral", "green", "blue", "purple"),lty=1:4)
)






