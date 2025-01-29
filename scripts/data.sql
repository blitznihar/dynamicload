DROP TABLE IF EXISTS mapping;
CREATE TABLE mapping (
    MappingID VARCHAR(20) NOT NULL,
    SourceField VARCHAR(50) NOT NULL,
    SourceType VARCHAR(20) NOT NULL,
    Start INT,
    SourceLength INT,
    Destination VARCHAR(50) NOT NULL,
    DestinationType VARCHAR(20) NOT NULL,
    DestinationLength INT,
    MappingFunction VARCHAR(50)
);


INSERT INTO mapping (MappingID, SourceField, SourceType, Start, SourceLength, Destination, DestinationType, DestinationLength, MappingFunction) VALUES
('MAPPING-0001', 'ID', 'FIXED', 0, 4, 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0001', 'Name', 'FIXED', 4, 14, 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0001', 'Date', 'FIXED', 18, 8, 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0001', 'Amount', 'FIXED', 26, 8, 'Amount', 'FLOAT', 2, 'PASSTHROUGH'),
('MAPPING-0002', 'ID', 'CSV,,', 0, 4, 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0002', 'Name', 'CSV,,', 4, 14, 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0002', 'Date', 'CSV,,', 18, 8, 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0002', 'Amount', 'CSV,,', 26, 8, 'Amount', 'FLOAT', 2, 'PASSTHROUGH'),
('MAPPING-0003', 'ID', 'CSV,|', 0, 4, 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0003', 'Name', 'CSV,|', 4, 14, 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0003', 'Date', 'CSV,|', 18, 8, 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0003', 'Amount', 'CSV,|', 26, 8, 'Amount', 'FLOAT', 2, 'PASSTHROUGH');


CREATE TABLE interface (
    InterfaceID VARCHAR(20) NOT NULL PRIMARY KEY,
    Source VARCHAR(50),
    SourceType VARCHAR(50),
    SourcePath VARCHAR(255),
    Destination VARCHAR(50),
    DestinationType VARCHAR(50),
    DestinationPath VARCHAR(255),
    Program VARCHAR(50),
    MappingID VARCHAR(20),
    Description VARCHAR(255)
);

INSERT INTO interface (InterfaceID, Source, SourceType, SourcePath, Destination, DestinationType, DestinationPath, Program, MappingID, Description) VALUES
('LAWSON-0005', 'File', NULL, NULL, 'Database', NULL, NULL, 'FileToTable', 'MAPPING-0001', 'Testing Concept'),
('LAWSON-0006', 'File', NULL, NULL, 'Database', NULL, NULL, 'FileToTable', 'MAPPING-0002', 'Testing Concept'),
('LAWSON-0007', 'File', NULL, NULL, 'Database', NULL, NULL, 'FileToTable', 'MAPPING-0003', 'Testing Concept');
