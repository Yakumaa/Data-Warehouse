CREATE TABLE MyDimDate (
    date_id INT NOT NULL PRIMARY KEY,
    date DATE NOT NULL,
    year INT NOT NULL,
    month INT NOT NULL,
    month_name VARCHAR(10) NOT NULL,
    day INT NOT NULL,
    weekday INT NOT NULL,
    weekday_name VARCHAR(10) NOT NULL
);

CREATE TABLE MyDimWaste (
    waste_id INT NOT NULL PRIMARY KEY,
    waste_type VARCHAR(50) NOT NULL,
    waste_weight DECIMAL(10, 2) NOT NULL
);

CREATE TABLE MyDimZone (
    zone_id INT NOT NULL PRIMARY KEY,
    zone_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE MyFactTrips (
    trip_number INT NOT NULL PRIMARY KEY,
    date_id INT NOT NULL,
    waste_id INT NOT NULL,
    zone_id INT NOT NULL,
    FOREIGN KEY (date_id) REFERENCES MyDimDate(date_id),
    FOREIGN KEY (waste_id) REFERENCES MyDimWaste(waste_id),
    FOREIGN KEY (zone_id) REFERENCES MyDimZone(zone_id)
);