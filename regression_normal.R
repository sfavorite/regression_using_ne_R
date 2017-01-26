# Regression analysis using the Normal equation

# Test with a straight line
y <- as.matrix(c(1, 2, 3, 4, 5))
X <- as.matrix(c(1, 2, 3, 4, 5))
plot(X, y)

# Set out X to have weight 0 <- 1
X <- as.matrix(cbind(1, X))
theta <- pseudoinverse(t(X) %*% as.matrix(X)) %*% t(X) %*% y
# Theta will be the weights of our model
prediction <- sum(c(1, 6) * theta)
# Our prediction indicates if X <- 6 then y is:
prediction

# Test normal equation using housing data
data <- read.csv("data1.csv", header = TRUE)

X <- as.matrix(data[,1:4])
X <- as.matrix(cbind(1, X))
y <- as.matrix(data[,5])

# Solve using the normal equation 
# Since we don't have a square matrix use the pseudoinverse which will perform a Moore-Penrose inverse
theta <- pseudoinverse(t(X) %*% as.matrix(X)) %*% t(X) %*% y

prediction <- sum(c(1, 2100, 4, 3, 40) * theta)

# Predicted price of the home - close to what you would expect
prediction
