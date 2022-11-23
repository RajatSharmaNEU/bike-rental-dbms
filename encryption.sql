CREATE TABLE MyPerson (
    MyPersonID INT,
    Password VARBINARY(400),
    CONSTRAINT MYPERSON_PK PRIMARY KEY (MyPersonID)
)

INSERT INTO MyPerson VALUES(2, EncryptByKey(Key_GUID('MyPerson_SM'), convert(VARBINARY,'Pass123')));

SELECT * FROM MyPerson;

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Damg@6210';

SELECT name KeyName, symmetric_key_id KeyID, key_length KeyLength, algorithm_desc KeyAlgorithm FROM sys.symmetric_keys;

CREATE CERTIFICATE MyPersonPassword WITH SUBJECT = 'My Person Sample Password';  

CREATE SYMMETRIC KEY MyPerson_SM WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE MyPersonPassword;  

OPEN SYMMETRIC KEY MyPerson_SM DECRYPTION BY CERTIFICATE MyPersonPassword;  

UPDATE MyPerson set [Password] = EncryptByKey(Key_GUID('MyPerson_SM'), convert(varbinary,'Pass123'));

OPEN SYMMETRIC KEY MyPerson_SM DECRYPTION BY CERTIFICATE MyPersonPassword;
SELECT *, CONVERT(varchar, DecryptByKey([Password])) AS 'Decrypted password' FROM dbo.MyPerson;

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'BlueBike@1234';
CREATE CERTIFICATE PersonPassword WITH SUBJECT = 'Person Password';  
CREATE SYMMETRIC KEY Person_SM WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE MyPersonPassword;  
OPEN SYMMETRIC KEY Person_SM DECRYPTION BY CERTIFICATE MyPersonPassword; 