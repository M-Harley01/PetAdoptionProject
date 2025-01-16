CREATE TABLE Pets (
    PetID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    Species TEXT NOT NULL,
    Breed TEXT,
    Age INTEGER,
    Gender TEXT,
    AdoptionStatus TEXT CHECK(AdoptionStatus IN ('Available', 'Adopted', 'Pending')),
    DateAdded DATE DEFAULT CURRENT_DATE,
    Notes TEXT
);

-- Example data
INSERT INTO Pets (Name, Species, Breed, Age, Gender, AdoptionStatus, Notes)
VALUES
    ('Bella', 'Dog', 'Labrador Retriever', 3, 'Female', 'Available', 'Friendly and energetic'),
    ('Max', 'Cat', 'Siamese', 2, 'Male', 'Adopted', 'Loves attention'),
    ('Charlie', 'Rabbit', 'Holland Lop', 1, 'Male', 'Available', 'Very calm'),
    ('Lucy', 'Dog', 'Beagle', 4, 'Female', 'Pending', 'Great with kids'),
    ('Daisy', 'Cat', 'Persian', 5, 'Female', 'Available', 'Requires regular grooming');
