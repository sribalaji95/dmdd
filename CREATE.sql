------------------------------------------------------------------------------------------------------------------------
------- CREATE TABLES -------
------------------------------------------------------------------------------------------------------------------------

CREATE DATABASE RetailStore;
USE RetailStore;


------------------------------------------------------------------------------------------------------------------------
------- DELETE IF TABLES -------
------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS FEEDBACK;
DROP TABLE IF EXISTS SHIPPING;
DROP TABLE IF EXISTS STORAGE;
DROP TABLE IF EXISTS SUPPLY;
DROP TABLE IF EXISTS VENDOR;
DROP TABLE IF EXISTS [ORDER_LINE];
DROP TABLE IF EXISTS PRODUCT;
DROP TABLE IF EXISTS DISCOUNT;
DROP TABLE IF EXISTS CATEGORY;
DROP TABLE IF EXISTS RECEIPT;
DROP TABLE IF EXISTS [ORDER];
DROP TABLE IF EXISTS MEMBERSHIP;
DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS EMPLOYEE_DEPARTMENT;
DROP TABLE IF EXISTS EMPLOYEE_JOB;
DROP TABLE IF EXISTS DEPARTMENT;
DROP TABLE IF EXISTS JOB_ROLE;
DROP TABLE IF EXISTS EMPLOYEE;

------------------------------------------------------------------------------------------------------------------------
------- CREATE TABLES -------
------------------------------------------------------------------------------------------------------------------------


CREATE TABLE EMPLOYEE
(
    Emp_ID INT IDENTITY (100, 1),
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Full_Name AS First_Name + SPACE(1) + Last_Name,
    DOB DATE,
    Gender CHAR(1) CONSTRAINT Emp_Gender_Check CHECK ([Gender] IN ('M', 'F')),
    Age AS DATEDIFF(year, DOB, GETDATE()),
    Retirement_Date AS DATEADD(year, 60, DOB),
    Grade VARCHAR (2),
    SSN_First_Five CHAR(5),
    SSN_Last_Four CHAR(4),
    Salary INT,
    [Type] VARCHAR(20) NOT NULL,
    [Status] VARCHAR(10) NOT NULL,
    Manager_ID INT,
    Mobile NUMERIC(10) NOT NULL CONSTRAINT EmployeeMobile_CHK CHECK (LEN(Mobile) = 10),
    Email_ID VARCHAR(50) NOT NULL,
    Street VARCHAR (50) NOT NULL,
    Unit VARCHAR (10),
    City VARCHAR (20) NOT NULL,
    [State] VARCHAR (2) CONSTRAINT Emp_State_Check CHECK ([State] IN ('AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY', 'Others')),
    Country VARCHAR (5) CONSTRAINT Emp_Country_Check CHECK ([Country] IN ('USA', 'Others')),
    Postal_Code VARCHAR (6) NOT NULL,
    Postal_Address AS Last_Name + SPACE(1) + First_Name + ', ' + ISNULL(Unit, 'N/A') + ', ' + Street + ', ' + City + ',' + [State] + ', ' + Postal_Code + ', ' + Country

    CONSTRAINT Employee_PK PRIMARY KEY (Emp_ID)
);


CREATE TABLE JOB_ROLE
(
    Role_ID INT IDENTITY (200, 1),
    Job_Name VARCHAR(20) NOT NULL,
    Job_Status BIT NOT NULL,
    CONSTRAINT JobRole_PK PRIMARY KEY (Role_ID)
);


CREATE TABLE DEPARTMENT
(
    Dept_ID INT IDENTITY (300, 1),
    Dept_Name VARCHAR(30) NOT NULL,
    Department_Status BIT NOT NULL,

    CONSTRAINT Deptartment_PK PRIMARY KEY (Dept_ID)
);


CREATE TABLE EMPLOYEE_JOB
(
    Role_ID INT,
    Emp_ID INT,
    Job_Status BIT NOT NULL,
    [Start_Date] DATE NOT NULL,
    [End_Date] DATE,
    CONSTRAINT EmployeeJob_PK PRIMARY KEY (Role_ID, Emp_ID),
    CONSTRAINT EmployeeJobRole_ID_FK FOREIGN KEY (Role_ID) REFERENCES JOB_ROLE (Role_ID),
    CONSTRAINT EmployeeJobEmp_ID_FK FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE (Emp_ID)
);


CREATE TABLE EMPLOYEE_DEPARTMENT
(
    Dept_ID INT,
    Emp_ID INT,
    [Start_Date] DATE NOT NULL,
    [End_Date] DATE,
    CONSTRAINT EmployeeDepartment_PK PRIMARY KEY (Dept_ID, Emp_ID),
    CONSTRAINT EmployeeDepartmentDept_ID_FK FOREIGN KEY (Dept_ID) REFERENCES DEPARTMENT (Dept_ID),
    CONSTRAINT EmployeeDepartmentEmp_ID_FK FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE (Emp_ID)
);


CREATE TABLE CUSTOMER
(
    Cust_ID INT IDENTITY (400, 1),
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Full_Name AS First_Name + SPACE(1) + Last_Name,
    DOB DATE,
    Gender CHAR(1) CONSTRAINT Customer_Gender_Check CHECK ([Gender] IN ('M', 'F')),
    Age AS DATEDIFF(year, DOB, GETDATE()),
    Mobile NUMERIC(10) NOT NULL CONSTRAINT CustomerMobile_CHK CHECK (LEN(Mobile) = 10),
    Email_ID VARCHAR(50) NOT NULL,
    Street VARCHAR (50) NOT NULL,
    Unit VARCHAR (10),
    City VARCHAR (20) NOT NULL,
    [State] VARCHAR (2) CONSTRAINT Cust_State_Check CHECK ([State] IN ('AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY', 'Others')),
    Country VARCHAR (5) CONSTRAINT Cust_Country_Check CHECK ([Country] IN ('USA', 'Others')),
    Postal_Code VARCHAR (6) NOT NULL,
    Postal_Address AS Last_Name + SPACE(1) + First_Name + ', ' + ISNULL(Unit, 'N/A') + ', ' + Street + ', ' + City + ',' + [State] + ', ' + Postal_Code + ', ' + Country

    CONSTRAINT Customer_PK PRIMARY KEY (Cust_ID)

);


CREATE TABLE MEMBERSHIP
(
    Membership_ID INT IDENTITY (500, 1),
    Customer_ID INT NOT NULL,
    Points INT NOT NULL,
    Validity DATE NOT NULL,

    CONSTRAINT Membership_PK PRIMARY KEY (Membership_ID),
    CONSTRAINT MembershipCustomer_ID_FK FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER(Cust_ID)
);


CREATE TABLE DISCOUNT
(
    Discount_ID INT IDENTITY (700, 1),
    Discount_Rate INT,
    Discount_Status CHAR(1) CONSTRAINT DiscountStatus_Check CHECK (Discount_Status IN ('Y', 'N')),
    [Description] VARCHAR(200),
    [Start_Date] DATE,
    [End_Date] DATE

        CONSTRAINT Discount_PK PRIMARY KEY (Discount_ID)
);


CREATE TABLE [ORDER]
(
    Order_ID INT IDENTITY (600, 1),
    Customer_ID INT NOT NULL,
    Employee_ID INT NOT NULL,
    [Date] DATE DEFAULT GETDATE(),
    Amount Money NOT NULL,
    Order_Type VARCHAR (10) CONSTRAINT OrderType_Check CHECK (Order_Type IN ('In-Store', 'Online')),
    Discount_ID INT

        CONSTRAINT Order_ID_PK PRIMARY KEY (Order_ID),
    CONSTRAINT OrderCustomer_ID_FK FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER (Cust_ID),
    CONSTRAINT OrderEmployee_ID_FK FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE (Emp_ID),
    CONSTRAINT OrderDiscount_ID_FK FOREIGN KEY (Discount_ID) REFERENCES DISCOUNT (Discount_ID)

);


CREATE TABLE RECEIPT
(
    Receipt_ID INT IDENTITY (1200, 1),
    Order_ID INT NOT NULL,
    Amount FLOAT NOT NULL,
    Tax FLOAT NOT NULL,
    Discount INT,
    CONSTRAINT Receipt_ID_PK PRIMARY KEY (Receipt_ID),
    CONSTRAINT ReceiptOrder_ID_FK FOREIGN KEY (Order_ID) REFERENCES [ORDER] (Order_ID)
);


CREATE TABLE CATEGORY
(
    Category_ID INT IDENTITY (800, 1),
    [Name] VARCHAR(60),
    [Description] VARCHAR(200),

    CONSTRAINT Category_ID_PK PRIMARY KEY (Category_ID)
);


CREATE TABLE PRODUCT
(
    Product_ID INT IDENTITY (900, 1),
    Category_ID INT NOT NULL,
    [Name] VARCHAR(100) NOT NULL,
    [Brand] VARCHAR(60) NOT NULL,
    [Description] VARCHAR(200),
    CostPrice MONEY NOT NULL,
    SellPrice MONEY NOT NULL,

    CONSTRAINT Product_PK PRIMARY KEY (Product_ID),
    CONSTRAINT ProductCategory_ID_FK FOREIGN KEY (Category_ID) REFERENCES CATEGORY (Category_ID)
);


CREATE TABLE [ORDER_LINE]
(
    Order_ID INT,
    Product_ID INT,
    ProductQuantity INT NOT NULL,

    CONSTRAINT OrderLine_PK PRIMARY KEY (Order_ID, Product_ID),
    CONSTRAINT OrderLineOrder_ID_FK FOREIGN KEY (Order_ID) REFERENCES [ORDER] (Order_ID),
    CONSTRAINT OrderProduct_ID_FK FOREIGN KEY (Product_ID) REFERENCES PRODUCT (Product_ID)

);


CREATE TABLE VENDOR
(
    Vendor_ID INT IDENTITY (1000, 1),
    Vendor_Name VARCHAR(40) NOT NULL,
    Mobile NUMERIC(10) NOT NULL CONSTRAINT VendorMobile_CHK CHECK (LEN(Mobile) = 10),
    Email_ID VARCHAR(50) NOT NULL,
    Street VARCHAR (20) NOT NULL,
    Unit VARCHAR (10),
    City VARCHAR (20) NOT NULL,
    [State] VARCHAR (2) CONSTRAINT Vendor_State_Check CHECK ([State] IN ('AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY', 'Others')),
    Country VARCHAR (5) CONSTRAINT Vendor_Country_Check CHECK ([Country] IN ('USA', 'Others')),
    Postal_Code VARCHAR (6) NOT NULL,
    Postal_Address AS Vendor_Name + ', ' + ISNULL(Unit, 'N/A') + ', ' + Street + ', ' + City + ',' + [State] + ', ' + Postal_Code + ', ' + Country

    CONSTRAINT Vendor_ID_PK PRIMARY KEY (Vendor_ID)
);


CREATE TABLE SUPPLY
(
    Vendor_ID INT,
    Product_ID INT,
    Placed_Date DATE,
    Amount Money NOT NULL

        CONSTRAINT Supply_PK PRIMARY KEY (Vendor_ID, Product_ID, Placed_Date ),
    CONSTRAINT SupplyVendor_ID_FK FOREIGN KEY (Vendor_ID) REFERENCES VENDOR (Vendor_ID),
    CONSTRAINT SupplyProduct_ID_FK FOREIGN KEY (Product_ID) REFERENCES PRODUCT (Product_ID)
);


CREATE TABLE STORAGE
(
    Storage_ID INT IDENTITY (1300, 1),
    [Name] VARCHAR(50) NOT NULL,
    [Location] VARCHAR(50) NOT NULL,
    CONSTRAINT Storage_PK PRIMARY KEY (Storage_ID)
);


CREATE TABLE SHIPPING
(
    Storage_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    ShippingLotSize INT NULL,
    CONSTRAINT Shipping_PK PRIMARY KEY (Storage_ID, Product_ID),
    CONSTRAINT ShippingStorage_ID_FK FOREIGN KEY (Storage_ID) REFERENCES STORAGE (Storage_ID),
    CONSTRAINT ShippingProduct_ID_FK FOREIGN KEY (Product_ID) REFERENCES PRODUCT (Product_ID)
);


CREATE TABLE FEEDBACK
(
    Feedback_ID INT IDENTITY (1100, 1),
    Order_ID INT NOT NULL,
    Rating INT NOT NULL CONSTRAINT Rating_CHK CHECK (Rating>=0 AND Rating<=5),
    Comments VARCHAR(1000)

        CONSTRAINT Feedback_PK PRIMARY KEY (Feedback_ID),
    CONSTRAINT FeedbackOrder_ID_PK FOREIGN KEY (Order_ID) REFERENCES [ORDER] (Order_ID)
);
GO

------------------------------------------------------------------------------------------------------------------------
------- PROCDEDURES STATEMENTS ------- at least 3 stored procedures containing input and output parameters
------------------------------------------------------------------------------------------------------------------------

-- PROCEDURE 1
CREATE OR ALTER PROCEDURE CalculateTotalValueOfOrder
AS
BEGIN
    UPDATE [ORDER] SET [ORDER].Amount = OL_Total.Amount
FROM (
SELECT o.Order_ID AS ID , SUM(ol.ProductQuantity * p.SellPrice) AS Amount
        FROM ORDER_LINE ol JOIN PRODUCT p ON ol.Product_ID = p.Product_ID
            JOIN [ORDER] o ON ol.Order_ID = o.Order_ID
        GROUP BY o.Order_ID
 ) AS OL_Total
WHERE Order_ID = OL_Total.ID
END
GO


-- PROCEDURE 2
CREATE OR ALTER PROCEDURE CalculateTotalSalesByAnEmployee
    @EmpID INT,
    @TotalAmount MONEY OUTPUT
AS
BEGIN
    SELECT SUM(Amount) AS TotalAmount
    FROM [ORDER]
    WHERE Employee_ID = @EmpID
    GROUP BY Employee_ID
END
GO


-- PROCEDURE 3
CREATE OR ALTER PROCEDURE CalculateTotalPurchaseByAnCustomer
    @Cust_ID INT,
    @TotalAmount MONEY OUTPUT
AS
BEGIN
    SELECT SUM(Amount) AS TotalAmount
    FROM [ORDER]
    WHERE Customer_ID = @Cust_ID
    GROUP BY Customer_ID
END
GO


-- PROCEDURE 4
CREATE OR ALTER PROCEDURE CalculateTop5BestSellers
AS
BEGIN
    SELECT TOP 5
        Product_ID,
        SUM(ProductQuantity) AS BestSeller
    FROM ORDER_LINE
    GROUP BY Product_ID
    ORDER BY BestSeller
END
GO


-- PROCEDURE 5
CREATE OR ALTER PROCEDURE EMPLOYEEOFTHEMONTH
    @start_date Date,
    @end_date Date
AS
BEGIN
    SELECT EMP.First_Name, EMP.Last_Name From EMPLOYEE EMP WHERE EMP_ID = (
        SELECT TOP 1 Employee_ID
        FROM [ORDER]
        WHERE Date between @start_date and @end_date
        -- LIMIT 1
        GROUP BY Employee_ID
        ORDER BY SUM(Amount) DESC
        )
END
GO


-- PROCEDURE 6
CREATE OR ALTER PROCEDURE UpdateDiscountStatus
AS
BEGIN

    DECLARE @CursorDiscount_ID INT,
@CursorStart_Date DATE,
@CursorEnd_Date DATE

    DECLARE cursor_results CURSOR FOR
  SELECT Discount_ID, [Start_Date], [End_Date]
    FROM DISCOUNT;

    OPEN cursor_results
    FETCH NEXT FROM cursor_results into @CursorDiscount_ID, @CursorStart_Date, @CursorEnd_Date
    WHILE @@FETCH_STATUS = 0
BEGIN

        /* Do something */
        IF (@CursorDiscount_ID != 700) -- Regular Customer Discount is always active
BEGIN
            IF (GETDATE() BETWEEN @CursorStart_Date AND @CursorEnd_Date)
  BEGIN
                UPDATE DISCOUNT SET Discount_Status = 'Y' WHERE Discount_ID = @CursorDiscount_ID;
            END
  ELSE
  BEGIN
                UPDATE DISCOUNT SET Discount_Status = 'N' WHERE Discount_ID = @CursorDiscount_ID;
            END
        END
        ELSE
        BEGIN
            UPDATE DISCOUNT SET Discount_Status = 'Y' WHERE Discount_ID = @CursorDiscount_ID;
        END
        FETCH NEXT FROM cursor_results into @CursorDiscount_ID, @CursorStart_Date, @CursorEnd_Date
    END

    CLOSE cursor_results;
    DEALLOCATE cursor_results;


END 
GO

------------------------------------------------------------------------------------------------------------------------
------- VIEWS STATEMENTS ------- at least 2 views (often used for reporting purposes).
------------------------------------------------------------------------------------------------------------------------

-- VIEW 1
CREATE OR ALTER VIEW CustomersMembership_V
AS
    SELECT c.Cust_ID,
        C.Full_Name,
        m.Membership_ID,
        m.Points,
        m.Validity
    FROM CUSTOMER C LEFT JOIN MEMBERSHIP m ON c.Cust_ID = m.Customer_ID;
GO


-- VIEW 2
CREATE OR ALTER VIEW AverageFeedbackCustomerRating_V
AS
    SELECT o.Customer_ID,
        AVG(f.Rating) AS AvgRating
    FROM FEEDBACK f JOIN [ORDER] o ON f.Order_ID = o.Order_ID
    GROUP BY o.Customer_ID;
GO

------------------------------------------------------------------------------------------------------------------------
------- TRIGGERS STATEMENTS ------- At least 1 trigger
------------------------------------------------------------------------------------------------------------------------

-- TRIGGER 1
CREATE OR ALTER TRIGGER UpdateMembershipPoint
ON [ORDER]
FOR INSERT
AS 
BEGIN
    UPDATE MEMBERSHIP SET Points = CurrentOrder.CurrentAmount * 0.1
FROM (
SELECT Customer_ID,
            SUM(Amount) AS CurrentAmount
        FROM INSERTED
        GROUP BY Customer_ID
 ) CurrentOrder
WHERE MEMBERSHIP.Customer_ID = CurrentOrder.Customer_ID
END
GO



-- TRIGGER 2
GO
CREATE OR ALTER TRIGGER UpdateDiscountIDGenerateReceipt
ON [ORDER]
INSTEAD OF INSERT
AS
  BEGIN
    DECLARE @Customer_ID INT
    DECLARE @Order_ID INT
    DECLARE @Discount_ID INT
    DECLARE @Discount_Rate INT
    DECLARE @Order_Amount Money

    SELECT @Customer_ID = Customer_ID
    FROM inserted;
    SELECT @Order_Amount = Amount
    FROM inserted;

    IF EXISTS(SELECT Customer_ID
    FROM MEMBERSHIP
    WHERE Customer_ID = @Customer_ID)
    BEGIN

        SELECT TOP 1
            @Discount_ID = Discount_ID
        from DISCOUNT
        where Discount_Status = 'Y'
        ORDER BY Discount_Rate DESC
        ;
        SELECT @Discount_Rate = Discount_Rate
        FROM DISCOUNT
        where Discount_ID = @Discount_ID;

        INSERT INTO [ORDER]
            (Customer_ID, Employee_ID, [Date], Amount, Order_Type)
        SELECT Customer_ID, Employee_ID, [Date], Amount, Order_Type
        FROM Inserted;
        UPDATE [ORDER] SET Discount_ID = @Discount_ID WHERE Customer_ID = @Customer_ID;

        SELECT @Order_ID = Order_ID
        FROM [ORDER]
        where Customer_ID = @Customer_ID;
        SET @Order_Amount = (@Order_Amount + (0.07*@Order_Amount) - ((@Discount_Rate*@Order_Amount)/100));
        INSERT INTO RECEIPT
            (Order_ID,Amount,Tax, Discount)
        VALUES
            (@Order_ID, ISNULL(@Order_Amount,0), 0.07*ISNULL(@Order_Amount,0), @Discount_Rate );

    END
    
    ELSE 
    
    BEGIN
        INSERT INTO [ORDER]
            (Customer_ID, Employee_ID, [Date], Amount, Order_Type)
        SELECT Customer_ID, Employee_ID, [Date], Amount, Order_Type
        FROM Inserted;
        UPDATE [ORDER] SET Discount_ID = NULL WHERE Customer_ID = @Customer_ID;

        SELECT @Order_ID = Order_ID
        FROM [ORDER]
        where Customer_ID = @Customer_ID;
        SET @Order_Amount = (@Order_Amount + (0.07*@Order_Amount));
        INSERT INTO RECEIPT
            (Order_ID,Amount,Tax, Discount)
        VALUES
            (@Order_ID, ISNULL(@Order_Amount,0), 0.07*ISNULL(@Order_Amount,0), 0 );

    END

END
GO

------------------------------------------------------------------------------------------------------------------------
------- OTHER REQUIREMENT -------
------------------------------------------------------------------------------------------------------------------------

-- The implementation must include at least three of the following four items:
-- Table-level CHECK Constraint - Done
-- Computed Columns based on a function - Done
-- Column Data Encryption -  Done 
-- Non-clustered indexes - Done
------------------------------------------------------------------------------------------------------------------------

-- INDEX 1
CREATE NONCLUSTERED INDEX EmployeeFirstName_INDEX
ON EMPLOYEE(First_Name);
GO

-- INDEX 2
CREATE NONCLUSTERED INDEX CustomerFirstName_INDEX
ON CUSTOMER(First_Name);
GO

-- INDEX 3
CREATE NONCLUSTERED INDEX ProductName_INDEX
ON PRODUCT([Name]);
GO

------------------------------------------------------------------------------------------------------------------------
------- END -------
------------------------------------------------------------------------------------------------------------------------
