students <- data.frame(
  student = c("reethu", "deepu", "krishna", "priya", "raju"),
  Math = c(99, 98, 97, 96, 95),
  Science = c(100, 68, 79, 89, 90),
  English = c(56, 78, 90, 78, 99),
  Hours = c(1.0, 2.0, 3.0, 4.0, 8.0)
)

head(students)
long_df <- pivot_longer(
  students,
  cols = c(Math, Science, English),
  names_to = "Subject",
  values_to = "Score"
)
ggplot(long_df, aes(x = Student, y = Score, color = Subject, group = Subject)) +
  geom_line(linewidth = 1) +                  # Draws the lines (corrected from 'line width')
  geom_point(size = 3) +                     # Adds points on top of the lines
  theme_minimal() +                          # Applies a clean background theme
  labs(
    title = "Student Score Trends",          # Title of the plot
    x = "Student",                           # X-axis label
    y = "Marks"                              # Y-axis label
  ) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1) # Rotates X-axis text for readability
  )
