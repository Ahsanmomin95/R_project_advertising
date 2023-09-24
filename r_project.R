# Load the advertising dataset
data <- read.csv("C:\\Users\\Ahsan Momin\\Desktop\\r prog\\advertising.csv")

# Summary statistics
summary(data)
str(data)
head(data)

#identifying the null values using sapply()to return result in form of array
sapply(data,function(x)sum(is.na(x)))

# Univariate analysis (example for 'TV','radio','newspaper' feature)
hist(data$TV, main="Histogram of TV ", xlab="Sales via Tv Ad")
hist(data$TV, main="Histogram of radio ", xlab="Sales via radio Ad")
hist(data$TV, main="Histogram of newspaper ", xlab="Sales via newspaper Ad")


# Bivariate analysis (example for TV vs. Sales)
plot(data$TV, data$sales, main="TV Ad vs Sales", xlab="TV Ad sales", ylab="Sales")
cor(data$TV, data$sales)

install.packages("ggplot2")



# Example of a scatter plot using ggplot2 for TV vs. Sales
library(ggplot2)
ggplot(data, aes(x=TV, y=sales)) +
  geom_point() +
  labs(title="TV Ad Budget vs. Sales", x="TV Ad Budget (in thousands)", y="Sales")


# Linear regression model (example for TV vs. Sales)
model <- lm(sales ~ TV, data=data)
summary(model)


