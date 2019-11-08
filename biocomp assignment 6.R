#problem 1
newhead<-function(x,y){
thefile<- read.csv(file = (x) , header = FALSE)
z=(thefile[c(1:y),])
return(z)    
}

#example: reads first ten lines of wages.csv
newhead("wages.csv", 10)


#problem 2
#last 2 rows of last 2 columns
iris<- read.csv(file = "iris.csv", header = TRUE)
FileEnd=(iris[,c(4,5)])
tail(FileEnd, 2)

#observations for each species
sum(iris[,5]=="virginica")
sum(iris[,5]=="setosa")
sum(iris[,5]=="versicolor")
#rows with sepal width >3.5

WideSepals=(iris[iris $"Sepal.Width">3.5,])
head (WideSepals)

#setosa.csv

setosa=(iris[iris $"Species"=="setosa",])
write.csv (setosa, 'setosa.csv')

#virginica observations

virginica=(iris[iris $"Species"=="virginica",])
head (virginica)
mean(virginica[["Petal.Width"]])
min(virginica[["Petal.Width"]])     
max(virginica[["Petal.Width"]])

