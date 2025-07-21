# User Registration and Login Web Application

This is a **Spring MVC web application** that allows users to **register and login securely**. It is built using **only annotations (no XML configuration)** for learning modern Spring MVC practices.

## Features

- User Registration with form validation
- User Login with session management
- Profile page to view user details
- Logout functionality to end session
- Integrated with MySQL database
- Clean project structure with Controller, Service, DAO layers

##  Technologies Used

- Java
- Spring MVC
- JSP / JSTL
- MySQL
- Maven
- Spring Tool Suite / Eclipse IDE

##  How to Run Locally

1. **Clone this repository**
## Database Table Creation Example

```sql
create table user_details(id int auto_increment primary key,
 name varchar(30) not null,email varchar(30) unique ,
password varchar(30), year int,lang varchar(70),
job_role varchar(30),
locations varchar(70));

Venkata Srinivasarao
Java Backend Developer
