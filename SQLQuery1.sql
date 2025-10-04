CREATE TABLE DimCity(
    ID INT PRIMARY KEY IDENTITY,
     City VARCHAR(100))



     CREATE TABLE DimCompound(
    ID INT PRIMARY KEY IDENTITY,
     Compound VARCHAR(100))

       CREATE TABLE DimDilevryDate(
    ID INT PRIMARY KEY IDENTITY,
     DilevryDate VARCHAR(100))

         CREATE TABLE DimDilevry_term(
    ID INT PRIMARY KEY IDENTITY,
     Dilevry_term VARCHAR(100))

        CREATE TABLE DimPayment(
    ID INT PRIMARY KEY IDENTITY,
    Payment_Option VARCHAR(100))


      CREATE TABLE DimPrice_Range(
    ID INT PRIMARY KEY IDENTITY,
    Price_Range VARCHAR(100))

        CREATE TABLE DimType(
    ID INT PRIMARY KEY IDENTITY,
    Type VARCHAR(100))



          CREATE TABLE DimFurnished(
    ID INT PRIMARY KEY IDENTITY,
    Furnished VARCHAR(100))


