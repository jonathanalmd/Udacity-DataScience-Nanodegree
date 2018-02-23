
source("set_wdir.r")

# Setting the current dir
set_wdir()

# Get data
input_data <- paste(getwd(),"berkeley.csv",sep="/")
Data <- read.csv(input_data, header=TRUE)

# Show data
head(Data)

plot(Data[,1],Data[,4])

attach(mtcars)
par(mfrow=c(2,2))

male_data <- Data[Data[,'Gender'] == 'Male',]
male_data
plot(male_data[,1], male_data[,4], main = 'Male', xlab = 'Admit', ylab = 'Frequence')
plot(male_data[3:4], main = 'Male', xlab = 'Department', ylab = 'Frequence')

depts <- c('A','B','C','D','E','F')
dept_a_admt <- subset(fem_data, Dept == 'A')
dept_a_admt <- nrow(subset(dept_a_admt,Admit == 'Admitted'))

dept_b_admt <- subset(fem_data, Dept == 'B')
dept_b_admt <- nrow(subset(dept_b_admt,Admit == 'Admitted'))

dept_c_admt <- subset(fem_data, Dept == 'C')
dept_c_admt <- nrow(subset(dept_c_admt,Admit == 'Admitted'))

dept_d_admt <- subset(fem_data, Dept == 'D')
dept_d_admt <- nrow(subset(dept_d_admt,Admit == 'Admitted'))

dept_e_admt <- subset(fem_data, Dept == 'E')
dept_e_admt <- nrow(subset(dept_e_admt,Admit == 'Admitted'))

dept_f_admt <- subset(fem_data, Dept == 'F')
dept_f_admt <- nrow(subset(dept_f_admt,Admit == 'Admitted'))


m_depts_df <- data.frame(matrix(ncol = 2, nrow = 6))


m_depts_df[,1] <- col1
m_depts_df[,2] <- c(dept_a_admt,dept_b_admt,dept_c_admt,
                    dept_d_admt,dept_e_admt,dept_f_admt)



fem_data <- Data[Data[,'Gender'] == 'Female',]
fem_data
plot(fem_data[,1], fem_data[,4], main = 'Female', xlab = 'Admit', ylab = 'Frequence')
plot(fem_data[3:4], main = 'Female', xlab = 'Department', ylab = 'Frequence')




# TODO: CREATE A FUNCTION

depts <- c('A','B','C','D','E','F')
dept_a_admt <- subset(male_data, Dept == 'A')
dept_a_admt <- nrow(subset(dept_a_admt,Admit == 'Admitted'))

dept_b_admt <- subset(male_data, Dept == 'B')
dept_b_admt <- nrow(subset(dept_b_admt,Admit == 'Admitted'))

dept_c_admt <- subset(male_data, Dept == 'C')
dept_c_admt <- nrow(subset(dept_c_admt,Admit == 'Admitted'))

dept_d_admt <- subset(male_data, Dept == 'D')
dept_d_admt <- nrow(subset(dept_d_admt,Admit == 'Admitted'))

dept_e_admt <- subset(male_data, Dept == 'E')
dept_e_admt <- nrow(subset(dept_e_admt,Admit == 'Admitted'))

dept_f_admt <- subset(male_data, Dept == 'F')
dept_f_admt <- nrow(subset(dept_f_admt,Admit == 'Admitted'))


f_depts_df <- data.frame(matrix(ncol = 2, nrow = 6))


f_depts_df[,1] <- col1
f_depts_df[,2] <- c(dept_a_admt,dept_b_admt,dept_c_admt,
                    dept_d_admt,dept_e_admt,dept_f_admt)




depts <- c('A','B','C','D','E','F')
dept_a_admt <- subset(fem_data, Dept == 'A')
dept_a_admt <- nrow(subset(dept_a_admt,Admit == 'Admitted'))

dept_b_admt <- subset(fem_data, Dept == 'B')
dept_b_admt <- nrow(subset(dept_b_admt,Admit == 'Admitted'))

dept_c_admt <- subset(fem_data, Dept == 'C')
dept_c_admt <- nrow(subset(dept_c_admt,Admit == 'Admitted'))

dept_d_admt <- subset(fem_data, Dept == 'D')
dept_d_admt <- nrow(subset(dept_d_admt,Admit == 'Admitted'))

dept_e_admt <- subset(fem_data, Dept == 'E')
dept_e_admt <- nrow(subset(dept_e_admt,Admit == 'Admitted'))

dept_f_admt <- subset(fem_data, Dept == 'F')
dept_f_admt <- nrow(subset(dept_f_admt,Admit == 'Admitted'))


f_depts_df <- data.frame(matrix(ncol = 2, nrow = 6))


f_depts_df[,1] <- col1
f_depts_df[,2] <- c(dept_a_admt,dept_b_admt,dept_c_admt,
                    dept_d_admt,dept_e_admt,dept_f_admt)


m_depts_df
f_depts_df