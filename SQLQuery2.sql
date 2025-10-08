CREATE TABLE FactHouseSales (
    FactID INT IDENTITY(1,1) PRIMARY KEY,
    Type_ID INT,
    Furnished_ID INT,
    Compound_ID INT,
    Payment_ID INT,
    Delivery_ID INT,
    City_ID INT,
    PriceRange_ID INT,
    Date_ID INT,  -- Foreign key to DimDate

    -- Measures
    Price DECIMAL(18,2),
    Bedrooms INT,
    Bathrooms INT,
    Area INT,
    Level INT,

    FOREIGN KEY (Type_ID) REFERENCES [dbo].[DimType](ID),
    FOREIGN KEY (Furnished_ID) REFERENCES DimFurnished(ID),
    FOREIGN KEY (Compound_ID) REFERENCES DimCompound(ID),
    FOREIGN KEY (Payment_ID) REFERENCES DimPayment(ID),
    FOREIGN KEY (Delivery_ID) REFERENCES [dbo].[DimDilevry_term](ID),
    FOREIGN KEY (City_ID) REFERENCES DimCity(ID),
    FOREIGN KEY (PriceRange_ID) REFERENCES DimPrice_Range(ID),
    FOREIGN KEY (Date_ID) REFERENCES [dbo].[DimDilevryDate](ID)
);