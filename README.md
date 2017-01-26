# Regression analsysis using normal equation

Simple straight line linear regression example and one using housing data using the noraml equation. 

The normal equation does not need you to choose a learning rate (alpha) and is not iterative. But you do need to compute the inverse of an NxN matrix which is big O of n cubed. Once n = 10000, and definitly at n = 1000000, you would start to consider using gradient descent over the normal equation. 