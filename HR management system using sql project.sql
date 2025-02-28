CREATE DATABASE HR_Management;
USE HR_Management;

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY AUTO_INCREMENT,
    DeptName VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    EmpName VARCHAR(100) NOT NULL,
    DeptID INT,
    Salary DECIMAL(10,2),
    JoiningDate DATE,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

CREATE TABLE Leaves (
    LeaveID INT PRIMARY KEY AUTO_INCREMENT,
    EmpID INT,
    LeaveDate DATE,
    LeaveType VARCHAR(50),
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);

CREATE TABLE Payroll (
    PayrollID INT PRIMARY KEY AUTO_INCREMENT,
    EmpID INT,
    Salary DECIMAL(10,2),
    Bonus DECIMAL(10,2) DEFAULT 0.00,
    Deductions DECIMAL(10,2) DEFAULT 0.00,
    NetSalary DECIMAL(10,2),
    PaymentDate DATE,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);


INSERT INTO Departments (DeptName) VALUES
('HR'), ('Finance'), ('IT'), ('Marketing'), ('Sales'),
('Operations'), ('Customer Support'), ('Legal'), ('Research'), ('Admin');

INSERT INTO Employees (EmpID, EmpName, DeptID, Salary, JoiningDate) VALUES
(1, 'John Doe', 1, 50000.00, '2022-01-15'),
(2, 'Jane Smith', 2, 55000.00, '2021-12-10'),
(3, 'Robert Brown', 3, 60000.00, '2020-06-25'),
(4, 'Emily Davis', 1, 48000.00, '2019-09-05'),
(5, 'Michael Johnson', 2, 62000.00, '2018-07-19'),
(6, 'Sarah Wilson', 3, 51000.00, '2017-04-21'),
(7, 'David Martinez', 1, 53000.00, '2016-11-11'),
(8, 'James Anderson', 2, 58000.00, '2022-03-22'),
(9, 'Linda Thomas', 3, 49000.00, '2019-08-30'),
(10, 'Daniel Garcia', 1, 47000.00, '2018-05-14'),
(11, 'Sophia Rodriguez', 2, 62000.00, '2017-10-07'),
(12, 'Andrew White', 3, 53000.00, '2016-12-20'),
(13, 'Olivia Harris', 1, 50000.00, '2020-04-18'),
(14, 'Matthew Clark', 2, 57000.00, '2019-06-09'),
(15, 'Isabella Lewis', 3, 52000.00, '2021-11-25'),
(16, 'Ethan Walker', 1, 59000.00, '2017-03-11'),
(17, 'Charlotte Hall', 2, 56000.00, '2020-09-14'),
(18, 'Mason Allen', 3, 54000.00, '2018-02-05'),
(19, 'Amelia Young', 1, 53000.00, '2015-07-30'),
(20, 'William Hernandez', 2, 60000.00, '2016-01-22'),
(21, 'Mia King', 3, 51000.00, '2021-05-17'),
(22, 'Alexander Wright', 1, 55000.00, '2019-04-09'),
(23, 'Harper Scott', 2, 63000.00, '2020-12-13'),
(24, 'Benjamin Green', 3, 47000.00, '2018-08-28'),
(25, 'Evelyn Adams', 1, 49000.00, '2017-06-15'),
(26, 'James Baker', 2, 58000.00, '2016-09-20'),
(27, 'Ava Gonzalez', 3, 52000.00, '2022-02-10'),
(28, 'Lucas Nelson', 1, 51000.00, '2019-01-01'),
(29, 'Ella Carter', 2, 59000.00, '2015-05-23'),
(30, 'Henry Mitchell', 3, 57000.00, '2018-10-29'),
(31, 'Sofia Perez', 1, 48000.00, '2020-11-14'),
(32, 'Jack Roberts', 2, 61000.00, '2017-12-19'),
(33, 'Liam Turner', 3, 52000.00, '2019-03-03'),
(34, 'Zoe Phillips', 1, 56000.00, '2021-07-08'),
(35, 'Logan Campbell', 2, 54000.00, '2018-06-02'),
(36, 'Grace Evans', 3, 50000.00, '2016-04-30'),
(37, 'Aiden Edwards', 1, 60000.00, '2019-08-20'),
(38, 'Chloe Collins', 2, 47000.00, '2015-11-11'),
(39, 'Elijah Stewart', 3, 53000.00, '2020-09-09'),
(40, 'Scarlett Morris', 1, 58000.00, '2017-02-14'),
(41, 'Jayden Bell', 2, 55000.00, '2018-12-01'),
(42, 'Victoria Murphy', 3, 49000.00, '2021-06-27'),
(43, 'Gabriel Reed', 1, 61000.00, '2015-03-18'),
(44, 'Lily Howard', 2, 50000.00, '2019-05-12'),
(45, 'Carter Hughes', 3, 57000.00, '2016-10-08'),
(46, 'Aria Ramirez', 1, 53000.00, '2018-07-16'),
(47, 'Ryan Foster', 2, 59000.00, '2022-04-05'),
(48, 'Hannah Bailey', 3, 56000.00, '2020-03-21'),
(49, 'Nathan Rivera', 1, 51000.00, '2017-09-01'),
(50, 'Addison Price', 2, 58000.00, '2016-02-28'),
(51, 'Isaac Simmons', 3, 54000.00, '2015-08-24'),
(52, 'Madison Brooks', 1, 50000.00, '2019-10-10'),
(53, 'Joshua Long', 2, 62000.00, '2020-05-07'),
(54, 'Leah Ross', 3, 47000.00, '2018-01-29'),
(55, 'Samuel Peterson', 1, 60000.00, '2017-11-17');

INSERT INTO Leaves (LeaveID, EmpID, LeaveDate, LeaveType) VALUES
(1, 1, '2024-01-05', 'Sick'),
(2, 2, '2024-02-10', 'Vacation'),
(3, 3, '2024-03-15', 'Personal'),
(4, 4, '2024-04-20', 'Sick'),
(5, 5, '2024-05-12', 'Vacation'),
(6, 6, '2024-06-08', 'Personal'),
(7, 7, '2024-07-25', 'Sick'),
(8, 8, '2024-08-14', 'Vacation'),
(9, 9, '2024-09-05', 'Personal'),
(10, 10, '2024-10-18', 'Sick'),
(11, 11, '2024-11-22', 'Vacation'),
(12, 12, '2024-12-30', 'Personal'),
(13, 13, '2025-01-07', 'Sick'),
(14, 14, '2025-02-14', 'Vacation'),
(15, 15, '2025-03-25', 'Personal'),
(16, 16, '2025-04-12', 'Sick'),
(17, 17, '2025-05-17', 'Vacation'),
(18, 18, '2025-06-20', 'Personal'),
(19, 19, '2025-07-30', 'Sick'),
(20, 20, '2025-08-22', 'Vacation'),
(21, 21, '2025-09-09', 'Personal'),
(22, 22, '2025-10-05', 'Sick'),
(23, 23, '2025-11-15', 'Vacation'),
(24, 24, '2025-12-28', 'Personal'),
(25, 25, '2026-01-10', 'Sick'),
(26, 26, '2026-02-20', 'Vacation'),
(27, 27, '2026-03-05', 'Personal'),
(28, 28, '2026-04-18', 'Sick'),
(29, 29, '2026-05-21', 'Vacation'),
(30, 30, '2026-06-09', 'Personal'),
(31, 31, '2026-07-12', 'Sick'),
(32, 32, '2026-08-25', 'Vacation'),
(33, 33, '2026-09-07', 'Personal'),
(34, 34, '2026-10-15', 'Sick'),
(35, 35, '2026-11-20', 'Vacation'),
(36, 36, '2026-12-05', 'Personal'),
(37, 37, '2027-01-14', 'Sick'),
(38, 38, '2027-02-22', 'Vacation'),
(39, 39, '2027-03-30', 'Personal'),
(40, 40, '2027-04-10', 'Sick'),
(41, 41, '2027-05-18', 'Vacation'),
(42, 42, '2027-06-29', 'Personal'),
(43, 43, '2027-07-21', 'Sick'),
(44, 44, '2027-08-31', 'Vacation'),
(45, 45, '2027-09-15', 'Personal'),
(46, 46, '2027-10-22', 'Sick'),
(47, 47, '2027-11-10', 'Vacation'),
(48, 48, '2027-12-19', 'Personal'),
(49, 49, '2028-01-05', 'Sick'),
(50, 50, '2028-02-11', 'Vacation'),
(51, 51, '2028-03-20', 'Personal'),
(52, 52, '2028-04-30', 'Sick'),
(53, 53, '2028-05-15', 'Vacation'),
(54, 54, '2028-06-28', 'Personal'),
(55, 55, '2028-07-09', 'Sick');

INSERT INTO Payroll (PayrollID, EmpID, Salary, Bonus, Deductions, NetSalary, PaymentDate) VALUES
(1, 1, 50000.00, 5000.00, 2000.00, 53000.00, '2024-01-31'),
(2, 2, 60000.00, 6000.00, 2500.00, 63500.00, '2024-01-31'),
(3, 3, 45000.00, 4000.00, 1500.00, 47500.00, '2024-01-31'),
(4, 4, 70000.00, 7000.00, 3000.00, 74000.00, '2024-01-31'),
(5, 5, 55000.00, 5500.00, 2200.00, 58300.00, '2024-01-31'),
(6, 6, 65000.00, 5000.00, 2700.00, 67300.00, '2024-01-31'),
(7, 7, 48000.00, 4800.00, 1800.00, 51000.00, '2024-01-31'),
(8, 8, 58000.00, 5800.00, 2300.00, 61500.00, '2024-01-31'),
(9, 9, 75000.00, 7500.00, 3200.00, 79300.00, '2024-01-31'),
(10, 10, 50000.00, 4000.00, 2000.00, 52000.00, '2024-01-31'),
(11, 11, 53000.00, 5300.00, 2100.00, 56200.00, '2024-01-31'),
(12, 12, 62000.00, 6200.00, 2800.00, 65400.00, '2024-01-31'),
(13, 13, 47000.00, 4700.00, 1700.00, 50000.00, '2024-01-31'),
(14, 14, 59000.00, 5900.00, 2400.00, 62500.00, '2024-01-31'),
(15, 15, 72000.00, 7200.00, 3100.00, 76100.00, '2024-01-31'),
(16, 16, 54000.00, 5400.00, 2200.00, 57200.00, '2024-01-31'),
(17, 17, 66000.00, 6600.00, 2900.00, 69700.00, '2024-01-31'),
(18, 18, 48000.00, 4800.00, 1900.00, 50900.00, '2024-01-31'),
(19, 19, 57000.00, 5700.00, 2500.00, 60200.00, '2024-01-31'),
(20, 20, 74000.00, 7400.00, 3300.00, 78100.00, '2024-01-31'),
(21, 21, 51000.00, 5100.00, 2100.00, 54000.00, '2024-01-31'),
(22, 22, 60000.00, 6000.00, 2700.00, 63300.00, '2024-01-31'),
(23, 23, 46000.00, 4600.00, 1600.00, 49000.00, '2024-01-31'),
(24, 24, 58000.00, 5800.00, 2300.00, 61500.00, '2024-01-31'),
(25, 25, 73000.00, 7300.00, 3200.00, 77100.00, '2024-01-31'),
(26, 26, 55000.00, 5500.00, 2200.00, 58300.00, '2024-01-31'),
(27, 27, 64000.00, 6400.00, 2800.00, 67600.00, '2024-01-31'),
(28, 28, 49000.00, 4900.00, 1900.00, 52000.00, '2024-01-31'),
(29, 29, 59000.00, 5900.00, 2600.00, 62300.00, '2024-01-31'),
(30, 30, 71000.00, 7100.00, 3000.00, 75100.00, '2024-01-31'),
(31, 31, 52000.00, 5200.00, 2000.00, 55200.00, '2024-01-31'),
(32, 32, 61000.00, 6100.00, 2700.00, 64400.00, '2024-01-31'),
(33, 33, 47000.00, 4700.00, 1800.00, 49900.00, '2024-01-31'),
(34, 34, 57000.00, 5700.00, 2300.00, 60400.00, '2024-01-31'),
(35, 35, 74000.00, 7400.00, 3100.00, 78300.00, '2024-01-31'),
(36, 36, 54000.00, 5400.00, 2200.00, 57200.00, '2024-01-31'),
(37, 37, 65000.00, 6500.00, 2900.00, 68600.00, '2024-01-31'),
(38, 38, 48000.00, 4800.00, 1800.00, 51000.00, '2024-01-31'),
(39, 39, 58000.00, 5800.00, 2500.00, 61300.00, '2024-01-31'),
(40, 40, 72000.00, 7200.00, 3000.00, 76200.00, '2024-01-31'),
(41, 41, 53000.00, 5300.00, 2100.00, 56200.00, '2024-01-31'),
(42, 42, 62000.00, 6200.00, 2700.00, 65500.00, '2024-01-31'),
(43, 43, 46000.00, 4600.00, 1600.00, 49000.00, '2024-01-31'),
(44, 44, 59000.00, 5900.00, 2400.00, 62500.00, '2024-01-31'),
(45, 45, 73000.00, 7300.00, 3100.00, 77200.00, '2024-01-31'),
(46, 46, 55000.00, 5500.00, 2200.00, 58300.00, '2024-01-31'),
(47, 47, 64000.00, 6400.00, 2900.00, 67500.00, '2024-01-31'),
(48, 48, 49000.00, 4900.00, 2000.00, 51900.00, '2024-01-31'),
(49, 49, 60000.00, 6000.00, 2700.00, 63300.00, '2024-01-31'),
(50, 50, 71000.00, 7100.00, 3000.00, 75100.00, '2024-01-31'),
(51, 51, 52000.00, 5200.00, 2000.00, 55200.00, '2024-01-31');

-- joins department names with employee details --
SELECT e.EmpID, e.EmpName, d.DeptName, e.Salary
FROM employees e
JOIN departments d ON e.DeptID = d.DeptID;

-- joins list employees with leave details --

SELECT e.EmpName, l.LeaveDate, l.LeaveType
FROM employees e
JOIN leaves l ON e.EmpID = l.EmpID;

-- joins payroll details with employee names --

SELECT e.EmpName, p.Salary, p.Bonus, p.Deductions, p.NetSalary
FROM payroll p
JOIN employees e ON p.EmpID = e.EmpID;


-- Store procedure to fetch a payroll details by department --
DELIMITER //
CREATE PROCEDURE GetPayrollByDept(IN dept_id INT)
BEGIN
    SELECT e.EmpName, p.Salary, p.Bonus, p.NetSalary
    FROM payroll p
    
    
    JOIN employees e ON p.EmpID = e.EmpID
    WHERE e.DeptID = dept_id;
END;
//
DELIMITER ;

-- Call the procedure
CALL GetPayrollByDept(101); 

--  subquery employees with salary above the average --

SELECT EmpName, Salary
FROM employees
WHERE Salary > (SELECT AVG(Salary) FROM employees);

-- list department with more than 5 employees --

SELECT DeptName
FROM departments
WHERE DeptID IN (
    SELECT DeptID
    FROM employees
    GROUP BY DeptID
    HAVING COUNT(EmpID) > 5
);

-- group by and having clause total salary and average bonus --
SELECT d.DeptName, SUM(p.Salary) AS TotalSalary, AVG(p.Bonus) AS AvgBonus
FROM payroll p
JOIN employees e ON p.EmpID = e.EmpID
JOIN departments d ON e.DeptID = d.DeptID
GROUP BY d.DeptName;

-- list Department and total salary above 50000 --

SELECT d.DeptName, SUM(p.Salary) AS TotalSalary
FROM payroll p
JOIN employees e ON p.EmpID = e.EmpID
JOIN departments d ON e.DeptID = d.DeptID
GROUP BY d.DeptName
HAVING SUM(p.Salary) > 50000;

-- shows employee details who took more than 3 days leave --

SELECT e.EmpName, COUNT(l.LeaveID) AS TotalLeaves
FROM employees e
JOIN leaves l ON e.EmpID = l.EmpID
GROUP BY e.EmpName
HAVING COUNT(l.LeaveID) > 3;

select * from payroll;
call GetPayrollByDept(102);










