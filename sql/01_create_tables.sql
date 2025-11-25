-- Table to store information about individual artisans
CREATE TABLE Artisans (
    artisan_id INT PRIMARY KEY,          -- Unique identifier for each artisan
    name VARCHAR(100),                   -- Full name of the artisan
    specialization VARCHAR(50),          -- Artisan's area of expertise (e.g., pottery, painting)
    skill_level INT,                     -- Numerical rating of skill (e.g., 1-10)
    country VARCHAR(50)                  -- Country of origin or residence
);

-- Table to store information about masterpieces created by artisans
CREATE TABLE Masterpieces (
    masterpiece_id INT PRIMARY KEY,      -- Unique identifier for each masterpiece
    artisan_id INT,                      -- ID of the artisan who created the masterpiece
    material VARCHAR(50),                -- Primary material used in the masterpiece
    rarity_score INT,                    -- Score representing how rare the masterpiece is
    technique_score INT,                 -- Score representing the technical skill used
    value INT,                           -- Estimated value of the masterpiece (currency units)
    creation_year INT,_

