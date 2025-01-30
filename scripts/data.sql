DROP TABLE IF EXISTS mapping;
CREATE TABLE mapping (
    MappingID VARCHAR(20) NOT NULL,
    SourceField VARCHAR(50) NULL,
    Start INT,
    SourceLength INT,
    Destination VARCHAR(50) NOT NULL,
    DestinationType VARCHAR(20) NOT NULL,
    DestinationLength INT,
    MappingFunction VARCHAR(50)
);


INSERT INTO mapping (MappingID, SourceField, Start, SourceLength, Destination, DestinationType, DestinationLength, MappingFunction) VALUES
('MAPPING-0001', 'ID' , 0, 4, 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0001', 'Name' , 4, 14, 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0001', 'Date', 18, 8, 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0001', 'Amount', 26, 8, 'Amount', 'FLOAT', 2, 'PASSTHROUGH'),
('MAPPING-0001', NULL, 0, 0, 'LastUpdated', 'DATETIME', NULL, "datetime('now')"),
('MAPPING-0002', 'ID',  0, 4, 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0002', 'Name', 4, 14, 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0002', 'Date', 18, 8, 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0002', 'Amount', 26, 8, 'Amount', 'FLOAT', 2, 'PASSTHROUGH'),
('MAPPING-0003', 'ID', 0, 4, 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0003', 'Name',  4, 14, 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0003', 'Date', 18, 8, 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0003', 'Amount', 26, 8, 'Amount', 'FLOAT', 2, 'PASSTHROUGH');


DROP TABLE IF EXISTS interface;
CREATE TABLE interface (
    InterfaceID VARCHAR(20) NOT NULL PRIMARY KEY,
    Source VARCHAR(50),
    SourceType VARCHAR(50),
    SourcePath VARCHAR(255),
    SourceDelimiter VARCHAR(1),
    Destination VARCHAR(50),
    DestinationType VARCHAR(50),
    DestinationPath VARCHAR(255),
    Program VARCHAR(50),
    MappingID VARCHAR(20),
    InterfaceDescription VARCHAR(255)
);


INSERT INTO interface (InterfaceID, Source, SourceType, SourcePath, SourceDelimiter, Destination, DestinationType, DestinationPath, Program, MappingID, InterfaceDescription) VALUES
('LAWSON-0005', 'FILE', 'FIXED',   'SourceFileFixedWidth.dat', NULL, 'Database',  'AccountDestinationTableA',             NULL, 'FileToTable', 'MAPPING-0001', 'Fixed Width File Testing Concept'),
('LAWSON-0006', 'FILE', 'DELIMITED', NULL,  ',', 'Database', 'AccountDestinationTableB', NULL, 'FileToTable', 'MAPPING-0002', 'CSV File- Comma DELIMITED Testing Concept'),
('LAWSON-0007', 'FILE', 'DELIMITED', NULL, '|','Database', 'AccountDestinationTableC', NULL, 'FileToTable', 'MAPPING-0003', 'CSV File- | DELIMITED Testing Concept');


