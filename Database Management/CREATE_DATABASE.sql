-- When creating a database, use CREATE DATABASE clause

-- RULES FOR VALID DATABASE NAMES
-- Length:

-- The name must be between 1 and 128 characters.
-- Allowed Characters:

-- Letters (a-z, A-Z), numbers (0-9), and some special characters (like _ and #) are allowed.
-- Avoid spaces and unusual characters unless enclosed in square brackets [ ].
-- Case Sensitivity:

-- Database names are not case-sensitive by default in SQL Server.
-- No Reserved Words:

-- Do not use SQL keywords or reserved words (e.g., SELECT, TABLE, DATABASE) as names unless enclosed in square brackets.
-- Unique Name:


-- BEST PRACTICES FOR NAMING
-- Meaningful Names:

-- Use descriptive names that reflect the purpose of the database (e.g., SalesDB, EmployeeRecords).
-- Consistent Naming Convention:

-- Stick to a naming convention, such as PascalCase (MyDatabase) or snake_case (my_database).
-- Avoid Abbreviations:

-- Use full words unless abbreviations are widely understood (e.g., HRDB for "Human Resources Database").
-- Avoid Prefixes/Suffixes:

-- Avoid redundant prefixes like db_ or suffixes like _db unless part of a clear standard.
-- Future-Proofing:

-- Avoid including version numbers or temporary indicators in the name (e.g., MyDatabase_v1 or TempDB).
-- Meaningful Names:

-- Use descriptive names that reflect the purpose of the database (e.g., SalesDB, EmployeeRecords).
-- Consistent Naming Convention:

-- Stick to a naming convention, such as PascalCase (MyDatabase) or snake_case (my_database).
-- Avoid Abbreviations:

-- Use full words unless abbreviations are widely understood (e.g., HRDB for "Human Resources Database").
-- Avoid Prefixes/Suffixes:

-- Avoid redundant prefixes like db_ or suffixes like _db unless part of a clear standard.
-- Future-Proofing:

-- Avoid including version numbers or temporary indicators in the name (e.g., MyDatabase_v1 or TempDB).


-- EXAMPLES OF VALID AND INVALID NAMES

-- Valid

-- CREATE DATABASE SalesDB;
-- CREATE DATABASE Inventory_2025;
-- CREATE DATABASE [My Database]; -- Requires brackets due to space
 

-- Invalid

-- CREATE DATABASE SELECT; -- Invalid
-- CREATE DATABASE My$Database; -- Invalid
-- CREATE DATABASE 2025Reports; -- Invalid
-- CREATE DATABASE [A_very_long_database_name_exceeding_128_characters...]; -- Invalid

CREATE DATABASE [DatabaseName];