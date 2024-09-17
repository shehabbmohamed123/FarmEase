CREATE TABLE Users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(20),
    address TEXT,
    email VARCHAR(100),
    password VARCHAR(255),
    gender ENUM('Male', 'Female'),
    position VARCHAR(50)
);

CREATE TABLE Livestock (
    id INT PRIMARY KEY AUTO_INCREMENT,
    issue TEXT,
    last_weight DECIMAL(10, 2),
    barn_id INT,
    FOREIGN KEY (barn_id) REFERENCES Barn(id)
);

CREATE TABLE Barn (
    id INT PRIMARY KEY AUTO_INCREMENT,
    number INT,
    capacity INT,
    issues TEXT,
    daily_feed DECIMAL(10, 2),
    progress TEXT,
    type ENUM('Livestock', 'Poultry')
);
