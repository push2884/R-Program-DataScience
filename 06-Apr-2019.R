#--------Clustring------------------------------------
#Kmeans---------------Algo------------------------------

library(data.table)
data(iris) #iris dataset
A = data.frame(iris)
head(A)
str(A)
table(A$Species)

model1 = kmeans(subset(A,select = -c(Species)),centers = 2,nstart = 20)
model1$cluster
A$clusters = as.factor(model1$cluster)
table(A$clusters,A$Species)

model1 = kmeans(subset(A,select = -c(Species)),centers = 3,nstart = 20)
model1$cluster
A$clusters = as.factor(model1$cluster)
table(A$clusters,A$Species)

model1 = kmeans(subset(A,select = -c(Species)),centers = 4,nstart = 20)
model1$cluster
A$clusters = as.factor(model1$cluster)
table(A$clusters,A$Species)



plot(A$Petal.Width,A$Petal.Length,col = A$clusters)
points(x = model1$centers[,4],y = model1$centers[,3],col = 1:3,pch = 3,cex = 2,lwd = 2)

# K = 2

model1 = kmeans(subset(A,select = -c(Species)),centers = 3,nstart = 20)
model1$cluster
A$clusters = as.factor(model1$cluster)
table(A$clusters,A$Species)

plot(A$Petal.Width,A$Petal.Length,col = A$clusters)
points(x = model1$centers[,4],y = model1$centers[,3],col = 1:3,pch = 3,cex = 2,lwd = 2)

# k = 4


model1 = kmeans(subset(A,select = -c(Species)),centers = 4,nstart = 20)
model1$cluster
A$clusters = as.factor(model1$cluster)
table(A$clusters,A$Species)

plot(A$Petal.Width,A$Petal.Length,col = A$clusters)
#points(x = model1$centers[,4],y = model1$centers[,3],col = 1:3,pch = 3,cex = 2,lwd = 2)

# k = 5

model1 = kmeans(subset(A,select = -c(Species)),centers = 5,nstart = 20)
model1$cluster
A$clusters = as.factor(model1$cluster)
table(A$clusters,A$Species)

plot(A$Petal.Width,A$Petal.Length,col = A$clusters)
points(x = model1$centers[,4],y = model1$centers[,3],col = 1:3,pch = 3,cex = 2,lwd = 2)