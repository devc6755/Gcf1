# Linear Regression Model for Student Marks Prediction

# Create sample dataset
student_data <- data.frame(
  study_hours = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  attendance = c(55, 60, 65, 70, 72, 78, 80, 85, 88, 92),
  assignment = c(40, 45, 50, 58, 62, 68, 72, 76, 80, 88),
  final_marks = c(45, 52, 58, 63, 68, 74, 79, 84, 89, 95)
)

# View dataset
print(student_data)

# Build linear regression model
model <- lm(final_marks ~ study_hours + attendance + assignment, data = student_data)

# Show model summary
summary(model)

# Predict marks for a new student
new_student <- data.frame(
  study_hours = 6,
  attendance = 80,
  assignment = 70
)

predicted_marks <- predict(model, new_student)
print(predicted_marks)

# Alternative: print predicted value with label
cat("Predicted final marks:", predicted_marks, "\n")
