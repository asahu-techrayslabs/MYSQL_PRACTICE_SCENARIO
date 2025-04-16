use practice_10th_june

-- 26) You have a table orders with a column order_date of type DATE. Write a query to extract the year, month, and day from the order_date for each order.
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE
);

INSERT INTO orders (order_id, order_date) VALUES
(1, '2024-03-15'),
(2, '2025-01-22'),
(3, '2023-12-05'),
(4, '2022-06-30');

SELECT
    order_id,
    order_date,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    EXTRACT(DAY FROM order_date) AS order_day
FROM orders;

-- 27) Consider a table employees with a column birth_date of type DATE. Write a query to calculate the age of each employee based on their birth_date (using the current date).
CREATE TABLE employee1 (
    employee_id INT PRIMARY KEY,
    birth_date DATE
);

INSERT INTO employee1 (employee_id, birth_date) VALUES
(1, '1995-04-15'),
(2, '1988-11-30'),
(3, '2000-01-10');

SELECT 
    employee_id,
    birth_date,
    TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS age_years
FROM employee1;

-- 28) You have a table subscriptions with a column start_date of type DATE. Write a query to add 30 days to the start_date for each subscription.

CREATE TABLE subscriptions (
    subscription_id INT PRIMARY KEY,
    start_date DATE
);

INSERT INTO subscriptions (subscription_id, start_date) VALUES
(1, '2025-04-01'),
(2, '2025-03-15'),
(3, '2025-01-01');

SELECT 
    subscription_id,
    start_date,
    DATE_ADD(start_date, INTERVAL 30 DAY) AS new_date
FROM subscriptions;

-- 29)Consider a table invoices with a column invoice_date of type DATE. Write a query to return the last day of the month for each invoice_date.

CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    invoice_date DATE
);

INSERT INTO invoices (invoice_id, invoice_date) VALUES
(1, '2025-04-17'),
(2, '2025-02-10'),
(3, '2025-06-25');


SELECT 
    invoice_id,
    invoice_date,
    LAST_DAY(invoice_date) AS last_day_of_month
FROM invoices;


-- 30) You have a table tasks with a column due_date of type DATE. Write a query to find all tasks that are due in the last 7 days from the current date.

CREATE TABLE tasks (
    task_id INT PRIMARY KEY,
    due_date DATE
);

INSERT INTO tasks (task_id, due_date) VALUES
(1, '2025-04-17'),
(2, '2025-04-16'),
(3, '2025-04-10'),
(4, '2025-04-05'),
(5, '2025-03-30');

SELECT 
    task_id,
    due_date
FROM tasks
WHERE due_date BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 DAY) AND CURDATE();

-- 31) You have a table events with a column event_date of type DATETIME. Write a query to format the event_date in the format YYYY-MM-DD HH:MM:SS for each event.

CREATE TABLE events (
    event_id INT PRIMARY KEY,
    event_date DATETIME
);

INSERT INTO events (event_id, event_date) VALUES
(1, '2025-04-17 10:30:45'),
(2, '2025-04-15 14:05:00'),
(3, '2025-04-12 08:00:30');

SELECT 
    event_id,
    event_date,
    DATE_FORMAT(event_date, '%Y-%m-%d %H:%i:%s') AS formatted_event_date
FROM events;

-- 32)Consider a table projects with columns start_date and end_date of type DATE. Write a query to find the number of days between the start_date and end_date for each project.

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE
);

INSERT INTO projects (project_id, start_date, end_date) VALUES
(1, '2025-04-01', '2025-04-17'),
(2, '2025-03-01', '2025-03-20'),
(3, '2025-02-15', '2025-04-01');

SELECT 
    project_id,
    start_date,
    end_date,
    DATEDIFF(end_date, start_date) AS duration_days
FROM projects;

-- 33)You have a table meetings with a column meeting_date of type DATE. Write a query to extract the day of the week (e.g., Monday, Tuesday, etc.) from the meeting_date.

CREATE TABLE meetings (
    meeting_id INT PRIMARY KEY,
    meeting_date DATE
);

INSERT INTO meetings (meeting_id, meeting_date) VALUES
(1, '2025-04-17'),
(2, '2025-04-14'),
(3, '2025-04-12');

SELECT 
    meeting_id,
    meeting_date,
    DAYNAME(meeting_date) AS day_of_week
FROM meetings;

-- 34) Consider a table sales with a column sale_date of type DATE. Write a query to find all sales made in the current year.

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE
);

INSERT INTO sales (sale_id, sale_date) VALUES
(1, '2025-01-10'),
(2, '2025-04-15'),
(3, '2024-12-31'),
(4, '2023-07-20');

SELECT 
    sale_id,
    sale_date
FROM sales
WHERE YEAR(sale_date) = YEAR(CURDATE());

-- 35) You have a table subscriptions with a column renewal_date of type DATETIME. Write a query to truncate the renewal_date to the first day of the month.

CREATE TABLE subscriptions1 (
    subscription_id INT PRIMARY KEY,
    renewal_date DATETIME
);

INSERT INTO subscriptions1 (subscription_id, renewal_date) VALUES
(1, '2025-04-17 10:30:45'),
(2, '2025-03-20 14:15:30'),
(3, '2025-06-01 08:00:00');

SELECT 
    subscription_id,
    renewal_date,
    DATE_FORMAT(renewal_date, '%Y-%m-01') AS truncated_renewal_date
FROM subscriptions1;

-- 36) You have a table projects with a column start_date of type DATE. Write a query to return the week number for each project's start_date.

CREATE TABLE projects1 (
    project_id INT PRIMARY KEY,
    start_date DATE
);

INSERT INTO projects1 (project_id, start_date) VALUES
(1, '2025-04-01'),
(2, '2025-03-15'),
(3, '2025-01-01');

SELECT 
    project_id,
    start_date,
    WEEK(start_date) AS week_number
FROM projects1;


-- 37)Consider a table events with a column event_date of type DATE. Write a query to find all events that will occur in the next 30 days from the current date.

CREATE TABLE events1 (
    event_id INT PRIMARY KEY,
    event_date DATE
);

INSERT INTO events1 (event_id, event_date) VALUES
(1, '2025-04-18'),
(2, '2025-04-20'),
(3, '2025-05-10'),
(4, '2025-04-25');


SELECT 
    event_id,
    event_date
FROM events1
WHERE event_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);


-- 38) You have a table revenues with a column revenue_date of type DATE. Write a query to return the quarter (e.g., Q1, Q2, Q3, Q4) for each revenue_date.

CREATE TABLE revenues (
    revenue_id INT PRIMARY KEY,
    revenue_date DATE
);

INSERT INTO revenues (revenue_id, revenue_date) VALUES
(1, '2025-01-10'),
(2, '2025-04-15'),
(3, '2025-07-01'),
(4, '2025-10-20');

SELECT 
    revenue_id,
    revenue_date,
    CONCAT('Q', QUARTER(revenue_date)) AS quarter
FROM revenues;



-- 39) Consider a table appointments with columns appointment_date and completed_date, both of type DATE. Write a query to find all appointments where the completed_date is later than the appointment_date.

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    appointment_date DATE,
    completed_date DATE
);

INSERT INTO appointments (appointment_id, appointment_date, completed_date) VALUES
(1, '2025-04-10', '2025-04-12'),
(2, '2025-04-15', '2025-04-14'),
(3, '2025-04-20', '2025-04-22');

SELECT 
    appointment_id,
    appointment_date,
    completed_date
FROM appointments
WHERE completed_date > appointment_date;

	
    -- 39) You have a table events with a column event_date of type DATE. Write a query to find all events that occur on the weekend (Saturday or Sunday).
    
    CREATE TABLE events2 (
    event_id INT PRIMARY KEY,
    event_date DATE
);

INSERT INTO events2 (event_id, event_date) VALUES
(1, '2025-04-17'),
(2, '2025-04-18'),
(3, '2025-04-19'),
(4, '2025-04-20');

SELECT 
    event_id,
    event_date
FROM events2
WHERE DAYOFWEEK(event_date) IN (1, 7);

   -- 40) You have a table projects with a column project_date of type DATE. Write a query to find the first day of the year for each project's project_date.
CREATE TABLE projects2 (
    project_id INT PRIMARY KEY,
    project_date DATE
);

INSERT INTO projects2 (project_id, project_date) VALUES
(1, '2025-04-10'),
(2, '2025-11-15'),
(3, '2024-01-01');

SELECT 
    project_id,
    project_date,
    CONCAT(YEAR(project_date), '-01-01') AS first_day_of_year
FROM projects2;




