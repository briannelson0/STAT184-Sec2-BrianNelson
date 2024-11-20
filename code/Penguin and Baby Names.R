library(ggplot2)
data(diamonds)

diamonds_data <- diamonds

ggplot(diamonds_data, aes(x = clarity, y = price)) + #mapping
  stat_boxplot(fill = "skyblue", color = "black", varwidth = TRUE) + #aesthetic/changingthe widths of the boxes to illistrate what type of clarity has the most amount of values
  labs(title = "Price Distribution by Clarity", #labels
       x = "Clarity",
       y = "Price (in dollars)") + 
  theme_minimal()

library(palmerpenguins)
penguin_data <- penguins

ggplot(penguin_data, aes(x = body_mass_g, y = bill_length_mm)) + #mapping
  geom_point(aes (color = species), size = 1) +  #changing the color and size of points
  geom_smooth(method = "lm", se = FALSE, color = "orange") +  # Linear regression line
  labs(title = "Scatter Plot: Body Mass vs. Bill Length",
       x = "Body Mass (g)",
       y = "Bill Length (mm)") + #labels
  theme_minimal()

#Baby names

library(dcData)
babynames<- BabyNames

myBabyNames <- BabyNames%>%
  filter( name =='Brian' | name== 'Meghan' | name == 'Shane' | name == 'Katherine')


ggplot(myBabyNames, aes(x = year, y = count)) +
  geom_line(aes(color = name)) +                
  labs(title = "My siblings names over time",
       x = "Year",
       y = "Count") +
  theme_minimal()
