Use Project;

CREATE TABLE Users (
    user_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone_number BIGINT NULL,
    created_at DATETIME NULL
);

CREATE TABLE Admin (
    admin_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY, -- Primary key
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE, -- Unique constraint
    password VARCHAR(255) NOT NULL,
    admin_type VARCHAR(50) NOT NULL, -- Checked for allowed values (if needed)
    created_at DATETIME NULL -- Optional field
);

ALTER TABLE Admin 
ADD CONSTRAINT CK_Admin_Type CHECK (admin_type IN ('G', 'L', 'T'));

CREATE TABLE suggestions (
    suggestion_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    created_at DATETIME
);

ALTER TABLE suggestions
ADD CONSTRAINT FK_suggestions_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE ON UPDATE CASCADE;

-- Create the OrderDetails table
CREATE TABLE OrderDetails (
    OrderId INT IDENTITY(1,1) NOT NULL,
    UserEmail VARCHAR(255) NOT NULL,
    OrderItems NVARCHAR(MAX) NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE(),
    DeliveryAddress NVARCHAR(500),
    City NVARCHAR(100) NOT NULL,
    City_Latitude DECIMAL(9,6),
    City_Longitude DECIMAL(9,6),
    Pincode NVARCHAR(10) NOT NULL,
    PackageCity NVARCHAR(100) NOT NULL,
    Package_Latitude DECIMAL(9,6),
    Package_Longitude DECIMAL(9,6),
    OrderStatus NVARCHAR(20) NOT NULL,

    -- Primary Key constraint
    CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderId),

    -- Foreign Key constraint
    CONSTRAINT FK_OrderDetails_Users FOREIGN KEY (UserEmail)
    REFERENCES Users(Email),

    -- Check constraint for OrderStatus
    CONSTRAINT CHK_OrderStatus CHECK (OrderStatus IN ('Ordered', 'Dispatched', 'In-transit', 'Delivered', 'Cancelled')),

    -- Check constraints for coordinates
    CONSTRAINT CHK_City_Latitude CHECK (City_Latitude BETWEEN -90 AND 90),
    CONSTRAINT CHK_City_Longitude CHECK (City_Longitude BETWEEN -180 AND 180),
    CONSTRAINT CHK_Package_Latitude CHECK (Package_Latitude BETWEEN -90 AND 90),
    CONSTRAINT CHK_Package_Longitude CHECK (Package_Longitude BETWEEN -180 AND 180)
);

-- Create index on UserEmail for better query performance
CREATE INDEX IX_OrderDetails_UserEmail ON OrderDetails(UserEmail);

-- Create index on OrderStatus for filtering and reporting
CREATE INDEX IX_OrderDetails_Status ON OrderDetails(OrderStatus);

select * from OrderDetails;


CREATE TABLE Ticket (
    ticket_id INT IDENTITY(1,1) NOT NULL PRIMARY KEY, -- Primary Key
    customer_id INT NOT NULL, -- Foreign Key
    assigned_admin_id INT NULL, -- Nullable
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    status VARCHAR(20) NULL,
    created_at DATETIME NULL,
    updated_at DATETIME NULL,
    priority INT NULL,
    order_id INT NULL, -- Foreign Key
    message NVARCHAR(MAX) NULL,
    admin_type CHAR(1) NOT NULL, -- Values like 'G', 'L', 'T' can be enforced via CHECK
    CONSTRAINT FK_ticket_customer FOREIGN KEY (customer_id) REFERENCES Users(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_ticket_order FOREIGN KEY (order_id) REFERENCES OrderDetails(OrderId) ON DELETE NO ACTION ON UPDATE NO ACTION
);


ALTER TABLE Ticket
ADD CONSTRAINT CHK_admin_type CHECK (admin_type IN ('G', 'L', 'T'));

CREATE TABLE Image (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    TicketId INT NOT NULL,
    ImageData VARBINARY(MAX) NOT NULL,
    CreatedAt DATETIME NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Ticket FOREIGN KEY (TicketId)
    REFERENCES Ticket(ticket_id)
);