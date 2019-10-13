

datab <- c(20, 30)
datab

res <- chisq.test(datab, p = c(0.49, 0.51))
res

ad1 <- c(25, 25)
ad2 <- c(35, 15)
adData <- as.data.frame(rbind(ad1, ad2))
names(adData) <- c("buy", "no")
adData
chisq.test(adData)

#One sample t-test
mTime <- c(86, 74, 50, 73, 24, 65, 84, 54, 16, 26)
mTime

summary(mTime)
res <- t.test(mTime, mu = 43.4)
res

t.test(mTime, mu = 43.4, alternative = "less")

Male <- c(173, 189, 170, 127, 156, 146, 180, 82, 103, 129)
female <- c(186,106, 130, 146, 149, 151, 132, 118, 120, 147)
summary(Male)
summary(female)
t.test(Male, female, var.equal = TRUE)
t.test(Male, female, var.equal = FALSE)

#paired t-test
before <- c(155, 151, 80, 112, 179, 170, 131, 175, 153, 175)
after <- c(139, 93, 133, 150, 135, 160, 155, 82, 84, 137)
summary(before)
summary(after)
t.test(before, after, paired = TRUE, alternative = "two.sided")


install.packages("ggplot2")
install.packages("pastecs")
install.packages("WRS")
