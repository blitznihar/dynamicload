DROP TABLE IF EXISTS mapping;
CREATE TABLE mapping (
    mapping_id VARCHAR(20) NOT NULL, 
    source_field VARCHAR(50) NULL,
    start_position INT, 
    source_length INT,
    source_data_type VARCHAR(20) NOT NULL,
    destination_field VARCHAR(50) NOT NULL, 
    destination_data_type VARCHAR(20) NOT NULL, 
    destination_length INT,
    mapping_function VARCHAR(50)
);

INSERT INTO mapping (mapping_id, source_field, start_position, source_length, source_data_type, destination_field, destination_data_type, destination_length, mapping_function) VALUES
('MAPPING-0001', 'ID' , 0, 4, 'str','ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0001', 'Name' , 4, 14,'str' , 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0001', 'Date', 18, 8,'str', 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0001', 'Amount', 26, 8, 'str', 'Amount', 'FLOAT', NULL, 'PASSTHROUGH'),
('MAPPING-0001', NULL, 0, 0, 'str', 'LastUpdated', 'DATETIME', NULL, "datetime('now')"),
('MAPPING-0002', 'ID',  0, 4, 'str', 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0002', 'Name', 4, 14, 'str', 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0002', 'Date', 18, 8, 'str', 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0002', 'Amount', 26, 8, 'str', 'Amount', 'FLOAT', NULL, 'PASSTHROUGH'), 
('MAPPING-0003', 'ID', 0, 4, 'str', 'ID', 'INT', NULL, 'PASSTHROUGH'),
('MAPPING-0003', 'Name',  4, 14, 'str', 'Name', 'VARCHAR', 50, 'PASSTHROUGH'),
('MAPPING-0003', 'Date', 18, 8, 'str', 'Date', 'DATE', NULL, 'PASSTHROUGH'),
('MAPPING-0003', 'Amount', 26, 8, 'str', 'Amount', 'FLOAT', NULL, 'PASSTHROUGH');


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
('LAWSON-0007', 'FILE', 'DELIMITED', NULL, '|','Database', 'AccountDestinationTableC', NULL, 'FileToTable', 'MAPPING-0003', 'CSV File- | DELIMITED Testing Concept'),
('LAWSON-0008', 'FILE', 'DELIMITED', 'SampleFiles/05.TXT', '\t','Database', 'Interface05TableT1', NULL, 'FileToTable', 'MAPPING-0000', 'CSV File- | DELIMITED Testing Interface05');


DROP TABLE IF EXISTS Scheduler;
CREATE TABLE Scheduler (
    interface_id VARCHAR(20) NOT NULL PRIMARY KEY,
    source_folder_location VARCHAR(255) NOT NULL,
    destination_folder_location VARCHAR(255) NOT NULL, 
    archive_location VARCHAR(255),
    CreatedDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    ModifiedDate DATETIME DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO Scheduler (interface_id, source_folder_location, destination_folder_location, archive_location)
VALUES
('LAWSON-0005', '\\\\Prod\\Interface005\\', '\\\\Prod\\AzureFilesDestination\\Interface005\\', '\\\\Prod\\AzureFilesArchive\\Interface005\\'),
('LAWSON-0006', '\\\\Prod\\Interface006\\', '\\\\Prod\\AzureFilesDestination\\Interface006\\', '\\\\Prod\\AzureFilesArchive\\Interface006\\'),
('LAWSON-0007', '\\\\Prod\\Interface007\\', '\\\\Prod\\AzureFilesDestination\\Interface007\\', '\\\\Prod\\AzureFilesArchive\\Interface007\\')


INSERT INTO mapping (mapping_id, source_field, start_position, source_length, source_data_type, destination_field, destination_data_type, destination_length, mapping_function)
VALUES
('MAPPING-0000', NULL, NULL, NULL, 'str', 'LoadNumber', 'INT', 0, '0'),
('MAPPING-0000', 'Column00', NULL, NULL, 'str', 'TYPE', 'CHAR', 1, NULL),
('MAPPING-0000', 'Column01', NULL, NULL, 'str', 'TRAN', 'CHAR', 1, NULL),
('MAPPING-0000', 'Column02', NULL, NULL, 'str', 'LOAN', 'CHAR', 1, NULL),
('MAPPING-0000', 'Column03', NULL, NULL, 'str', 'ACCT', 'CHAR', 1, NULL),
('MAPPING-0000', 'Column04', NULL, NULL, 'str', 'SORT_KEY', 'CHAR', 20, NULL),
('MAPPING-0000', 'Column05', NULL, NULL, 'str', 'DESCRIPTION', 'CHAR', 25, NULL),
('MAPPING-0000', 'Column06', NULL, NULL, 'str', 'TRANS_CD', 'CHAR', 4, NULL),
('MAPPING-0000', 'Column07', NULL, NULL, 'str', 'MODE', 'CHAR', 2, NULL),
('MAPPING-0000', 'Column08', NULL, NULL, 'str', 'POLICY', 'CHAR', 9, NULL),
('MAPPING-0000', 'Column09', NULL, NULL, 'str', 'AGY', 'CHAR', 3, NULL),
('MAPPING-0000', 'Column10', NULL, NULL, 'str', 'LAT', 'CHAR', 6, NULL),
('MAPPING-0000', 'Column11', NULL, NULL, 'str', 'ACCOUNT', 'CHAR', 7, NULL),
('MAPPING-0000', 'Column12', NULL, NULL, 'str', 'AMOUNT', 'DECIMAL', 0, NULL),
('MAPPING-0000', 'Column13', NULL, NULL, 'str', 'FILLER', 'CHAR', 1, NULL),
('MAPPING-0000', 'Column14', NULL, NULL, 'str', 'RARB_CODE', 'CHAR', 1, NULL),
('MAPPING-0000', 'Column15', NULL, NULL, 'str', 'GTD', 'CHAR', 2, NULL),
('MAPPING-0000', 'Column16', NULL, NULL, 'str', 'APR', 'CHAR', 1, NULL),
('MAPPING-0000', 'Column17', NULL, NULL, 'str', 'STATE', 'CHAR', 2, NULL),
('MAPPING-0000', 'Column18', NULL, NULL, 'str', 'COUNTY', 'CHAR', 3, NULL),
('MAPPING-0000', 'Column19', NULL, NULL, 'str', 'CDT', 'CHAR', 6, NULL),
('MAPPING-0000', 'Column20', NULL, NULL, 'str', 'FILLER2', 'CHAR', 1, NULL),
('MAPPING-0000', 'Column21', NULL, NULL, 'str', 'DDT', 'CHAR', 6, NULL),
('MAPPING-0000', 'Column22', NULL, NULL, 'str', 'KIND_2', 'CHAR', 2, NULL),
('MAPPING-0000', 'Column23', NULL, NULL, 'str', 'KIND_4', 'CHAR', 2, NULL),
('MAPPING-0000', 'Column24', NULL, NULL, 'str', 'FILLER3', 'CHAR', 5, NULL),
('MAPPING-0000', 'Column25', NULL, NULL, 'str', 'ISSUE', 'CHAR', 7, NULL),
('MAPPING-0000', 'Column26', NULL, NULL, 'str', 'SERIES', 'CHAR', 2, NULL),
('MAPPING-0000', 'Column27', NULL, NULL, 'str', 'FILLER4', 'CHAR', 2, NULL),
('MAPPING-0000', 'Column28', NULL, NULL, 'str', 'SOURCE', 'CHAR', 6, NULL),
('MAPPING-0000', 'Column29', NULL, NULL, 'str', 'FILLERS', 'CHAR', 8, NULL),
('MAPPING-0000', 'Column30', NULL, NULL, 'str', 'PFREQ', 'CHAR', 3, NULL),
('MAPPING-0000', 'Column31', NULL, NULL, 'str', 'WHO', 'CHAR', 3, NULL),
('MAPPING-0000', 'Column32', NULL, NULL, 'str', 'FILLER6', 'CHAR', 13, NULL),
('MAPPING-0000', 'Column33', NULL, NULL, 'str', 'DATE', 'CHAR', 6, NULL),
('MAPPING-0000', 'Column34', NULL, NULL, 'str', 'CO_CODE', 'CHAR', 3, NULL),
('MAPPING-0000', 'Column35', NULL, NULL, 'str', 'FILLER7', 'CHAR', 2, NULL),
('MAPPING-0000', 'Column36', NULL, NULL, 'str', 'FILLER8', 'CHAR', 5, NULL),
('MAPPING-0000', 'Column37', NULL, NULL, 'str', 'CONTROL_DATE', 'DATETIME', 0, NULL),
('MAPPING-0000', NULL, NULL, NULL, 'str', 'ES_CREATE_DATE', 'DATETIME', 0, "datetime('now')"),
('MAPPING-0000', NULL, NULL, NULL, 'str', 'JOB_AUDIT_ID', 'INT', 0, '''{interface_id}'''),
('MAPPING-0000', NULL, NULL, NULL, 'str', 'DATA_SOURCE_ID', 'VARCHAR', 50, '''{interface_id}''');