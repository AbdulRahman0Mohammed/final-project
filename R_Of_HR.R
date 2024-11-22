#تثبيت المكتبات
install.packages("readxl")
install.packages("ggplot2")

# تحميل 
library(readxl)
library(ggplot2)

file_path <- "C:/Users/DELL/Desktop/HR_For_SQL.xlsx"
df <- read_excel(file_path, sheet = "Employee")

summary(data)

#f_w by ggplot
ggplot(df, aes(x = Age, y = Salary)) +
  geom_point(aes(color = Gender)) +  
  geom_smooth(method = "lm") +  
  facet_wrap(~ Gender) +  
  ggtitle("Salary vs Age by Gender") +
  xlab("Age") +
  ylab("Salary")

# pairs
pairs(df[, c("Age", "Salary")], main = "Pairs Plot: Salary vs Age")


# تحديد متوسط راتب وظيفة Software Engineer
software_engineer_salary <- average_salary_by_job %>%
  filter(JobRole == "Software Engineer")

