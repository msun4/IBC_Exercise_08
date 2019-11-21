#Code by Maisha Khair Nima, Miaomiao Sun, Paul Wasuwanich
setwd("C:/Users/paulw/Downloads")
data<-read.table("UWvMSU_1-22-13.txt",header=TRUE)
head(data)

#Part 1: Plotting Team Performance
UW<-subset(data, team=="UW")
MSU<-subset(data, team=="MSU")

plot(UW$time,UW$score,type='l',xlab="Time",ylab="Score", col= rainbow(25), sub="Red=UW Black=MSU")
lines(MSU$time,MSU$score)

#Part 2: Guess my number


for (i in 1:10){
  number<-floor(runif(1, min=0, max=101))
  guess <- readline(prompt="Guess: ")
  
  if (number==guess) { 
    print("Correct!")
  } else if (number<guess) {
    print("You Suck, Lower!")
  } else {
    print("You Suck, Higher!")
  }
  
}

