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
('LAWSON-0005', 'FILE', 'FIXED',   'SourceFileFixedWidth.dat', NULL, 'Database',  NULL,             NULL, 'FileToTable', 'MAPPING-0001', 'Fixed Width File Testing Concept'),
('LAWSON-0006', 'FILE', 'DELIMITED', NULL,  ',', 'Database', NULL, NULL, 'FileToTable', 'MAPPING-0002', 'CSV File- Comma DELIMITED Testing Concept'),
('LAWSON-0007', 'FILE', 'DELIMITED', NULL, '|','Database', NULL, NULL, 'FileToTable', 'MAPPING-0003', 'CSV File- | DELIMITED Testing Concept');

