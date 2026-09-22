# Medical Patient Data Analysis Using R
# Academic demonstration project

# 1. Data Importing
medical_data <- read.csv("data/medical_data.csv")
head(medical_data)

# 2. Data Preprocessing and Cleaning
str(medical_data)
colSums(is.na(medical_data))
sum(duplicated(medical_data))
summary(medical_data)

# 3. Statistical Analysis
cat("Age Mean:", mean(medical_data$Age), "\n")
cat("Age Median:", median(medical_data$Age), "\n")
cat("Age Variance:", var(medical_data$Age), "\n")
cat("Age SD:", sd(medical_data$Age), "\n\n")

cat("Blood Pressure Mean:", mean(medical_data$Blood_Pressure), "\n")
cat("Blood Pressure Median:", median(medical_data$Blood_Pressure), "\n")
cat("Blood Pressure SD:", sd(medical_data$Blood_Pressure), "\n\n")

cat("Cholesterol Mean:", mean(medical_data$Cholesterol), "\n")
cat("Cholesterol Median:", median(medical_data$Cholesterol), "\n")
cat("Cholesterol SD:", sd(medical_data$Cholesterol), "\n\n")

cat("Glucose Mean:", mean(medical_data$Glucose), "\n")
cat("Glucose Median:", median(medical_data$Glucose), "\n")
cat("Glucose SD:", sd(medical_data$Glucose), "\n")

# 4. Graphical Analysis
dir.create("output", showWarnings = FALSE)

png("output/gender_distribution.png", width=900, height=700)
pie(table(medical_data$Gender), main="Gender Distribution")
dev.off()

png("output/health_status_distribution.png", width=900, height=700)
barplot(table(medical_data$Health_Status),
        main="Health Status Distribution",
        xlab="Health Status", ylab="Number of Patients")
dev.off()

png("output/age_distribution.png", width=900, height=700)
hist(medical_data$Age, main="Age Distribution", xlab="Age", ylab="Frequency")
dev.off()

png("output/blood_pressure_distribution.png", width=900, height=700)
hist(medical_data$Blood_Pressure, main="Blood Pressure Distribution",
     xlab="Blood Pressure", ylab="Frequency")
dev.off()

png("output/cholesterol_distribution.png", width=900, height=700)
hist(medical_data$Cholesterol, main="Cholesterol Distribution",
     xlab="Cholesterol", ylab="Frequency")
dev.off()

png("output/glucose_distribution.png", width=900, height=700)
hist(medical_data$Glucose, main="Glucose Level Distribution",
     xlab="Glucose Level", ylab="Frequency")
dev.off()

png("output/age_boxplot.png", width=900, height=700)
boxplot(medical_data$Age, main="Patient Age Boxplot", ylab="Age")
dev.off()

png("output/blood_pressure_boxplot.png", width=900, height=700)
boxplot(medical_data$Blood_Pressure, main="Blood Pressure Boxplot",
        ylab="Blood Pressure")
dev.off()

png("output/age_vs_blood_pressure.png", width=900, height=700)
plot(medical_data$Age, medical_data$Blood_Pressure,
     main="Age vs Blood Pressure", xlab="Age", ylab="Blood Pressure", pch=19)
dev.off()

png("output/age_vs_cholesterol.png", width=900, height=700)
plot(medical_data$Age, medical_data$Cholesterol,
     main="Age vs Cholesterol", xlab="Age", ylab="Cholesterol", pch=19)
dev.off()

png("output/health_status_by_gender.png", width=900, height=700)
barplot(table(medical_data$Gender, medical_data$Health_Status),
        beside=TRUE, legend.text=TRUE,
        main="Health Status by Gender",
        xlab="Gender", ylab="Number of Patients")
dev.off()
