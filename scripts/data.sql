DROP TABLE IF EXISTS mapping;
CREATE TABLE mapping (
    mapping_id VARCHAR(20) NOT NULL, 
    source_field VARCHAR(50) NULL,
    start_position INT, 
    source_length INT,
    destination_field VARCHAR(50) NOT NULL, 
    destination_data_type VARCHAR(20) NOT NULL, 
    destination_length INT,
    mapping_function VARCHAR(50)
);

INSERT INTO mapping (mapping_id, source_field, start_position, source_length, destination_field, destination_data_type, destination_length, mapping_function) VALUES
('MAPPING-0001', 'ID' , 0, 4, 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0001', 'Name' , 4, 14, 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0001', 'Date', 18, 8, 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0001', 'Amount', 26, 8, 'Amount', 'FLOAT', NULL, 'PASSTHROUGH'),
('MAPPING-0001', NULL, 0, 0, 'LastUpdated', 'DATETIME', NULL, "datetime('now')"),
('MAPPING-0002', 'ID',  0, 4, 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0002', 'Name', 4, 14, 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0002', 'Date', 18, 8, 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0002', 'Amount', 26, 8, 'Amount', 'FLOAT', NULL, 'PASSTHROUGH'), 
('MAPPING-0003', 'ID', 0, 4, 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0003', 'Name',  4, 14, 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0003', 'Date', 18, 8, 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0003', 'Amount', 26, 8, 'Amount', 'FLOAT', NULL, 'PASSTHROUGH');


DROP TABLE IF EXISTS interface;
CREATE TABLE interface (
    interface_id VARCHAR(20) NOT NULL PRIMARY KEY,
    source_system VARCHAR(50),
    source_type VARCHAR(50),
    source_path VARCHAR(255),
    source_delimiter VARCHAR(1),
    destination_system VARCHAR(50),
    destination_type VARCHAR(50),
    destination_path VARCHAR(255),
    program_name VARCHAR(50),
    mapping_id VARCHAR(20),
    interface_description VARCHAR(255)
);

INSERT INTO interface (interface_id, source_system, source_type, source_path, source_delimiter, destination_system, destination_type, destination_path, program_name, mapping_id, interface_description) VALUES
('LAWSON-0005', 'FILE', 'FIXED',   'SourceFileFixedWidth.dat', NULL, 'Database',  'AccountDestinationTableA',             NULL, 'FileToTable', 'MAPPING-0001', 'Fixed Width File Testing Concept'),
('LAWSON-0006', 'FILE', 'DELIMITED', NULL,  ',', 'Database', 'AccountDestinationTableB', NULL, 'FileToTable', 'MAPPING-0002', 'CSV File- Comma DELIMITED Testing Concept'),
('LAWSON-0007', 'FILE', 'DELIMITED', NULL, '|','Database', 'AccountDestinationTableC', NULL, 'FileToTable', 'MAPPING-0003', 'CSV File- | DELIMITED Testing Concept');