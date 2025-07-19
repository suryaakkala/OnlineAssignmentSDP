
# Online Assignment Submission & Grading System

A full-stack web application built using **Spring Boot**, **MySQL**, **JPA**, and **JSP/CSS**, designed to simplify assignment submissions, grading, and faculty-student interactions.

- **Students** can view assigned courses, submit assignments, and check grades.
- **Faculty** can create assignments, grade submissions, and provide feedback.
- **Admins** manage user accounts and map faculty/students to courses.

## 📌 Project Overview

This system provides an end-to-end solution for managing assignments between faculty and students with centralized administrative control.

- **Students** can view assigned courses, submit assignments, and check grades.
- **Faculty** can create assignments, grade submissions, and provide feedback.
- **Admins** manage user accounts and map faculty/students to courses.

## 👥 User Roles & Functionalities

### 🔹 Admin
- Login/logout
- Create users (faculty, student)
- Create courses
- Assign students/faculty to courses

### 🔹 Faculty
- Login/logout
- View assigned courses
- Create assignments
- View student submissions
- Grade assignments with feedback

### 🔹 Student
- Login/logout
- View enrolled courses
- Upload assignment submissions
- Edit submissions (before deadline)
- View grades & feedback

## 🛠️ Tech Stack

| Layer       | Technology         |
|------------|--------------------|
| Backend     | Spring Boot        |
| ORM         | Spring Data JPA    |
| Database    | MySQL              |
| Frontend    | JSP, CSS           |
| Build Tool  | Maven              |

## 🗂️ Project Structure

```
src/
├── main/
│   ├── java/com/klef/jfsd/springboot/
│   │   ├── controller/      # Controllers for each role
│   │   ├── model/           # Entity classes (Admin1, Faculty, Student)
│   │   ├── repository/      # Spring Data JPA Repositories
│   │   └── service/         # Service interfaces and implementations
│   ├── resources/
│   │   └── application.properties
│   └── webapp/
│       ├── *.jsp            # JSP pages for all roles
│       └── style/           # Custom CSS files
```

## 🧾 Database Schema (MySQL)

### 📄 `user`  
- `id`, `username`, `password`, `role`

### 📄 `assignment`
- `id`, `title`, `description`, `deadline`, `teacher_id (FK)`

### 📄 `submission`
- `id`, `file_url`, `submission_date`, `assignment_id (FK)`, `student_id (FK)`

### 📄 `grade`
- `id`, `score`, `feedback`, `submission_id (FK)`

## 🚀 How to Run Locally

1. **Clone the repository**

```bash
git clone https://github.com/suryaakkala/OnlineAssignmentSDP.git
cd OnlineAssignmentSDP
```

2. **Configure `application.properties`** with your MySQL DB credentials.

3. **Run the project**

```bash
./mvnw spring-boot:run
```

4. **Open your browser** at: `http://localhost:8080/`


## 👨‍💻 Contributors

| Name             | Role               | GitHub                             |
|------------------|--------------------|------------------------------------|
| Abburi Yasaswini | Backend Developer  | [GitHub Profile](https://github.com/2200031646) |
| Sruthi Kanneti   | Resource Gathering | [GitHub Profile](https://github.com/Sruthi-3-0) |
| Surya Akkala     | Team Lead, Frontend Dev | [GitHub Profile](https://github.com/SuryaAkkala) |

## 📜 License

This project is for academic and demonstration purposes.
