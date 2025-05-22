CREATE TABLE  Osooba(
IDOsoba INT CONSTRAINT PK_osoba PRIMARY KEY IDENTITY, 
Ime varchar(50),
prezime varchar(60) 
)

BEGIN TRAN
INSERT INTO Osooba(Ime,prezime)
Values('Miro','Miric')
SAVE TRAN save1
INSERT INTO Osooba(Ime,prezime)
Values('Miro','Miric')
SAVE TRAN save2
ROLLBACK TRAN
SELECT * FROM Osooba


BEGIN TRAN
INSERT INTO Osooba(Ime,prezime)
Values('Miro','Miric')
SAVE TRAN save3
INSERT INTO Osooba(Ime,prezime)
Values('Miro','Miric')
SAVE TRAN save4
COMMIT TRAN
SELECT * FROM Osooba


BEGIN TRAN
INSERT INTO Osooba(Ime,prezime)
Values('Ana','Miric')
SAVE TRAN save5
INSERT INTO Osooba(Ime,prezime)
Values('Iva','Miric')
ROLLBACK TRAN save5;
ROLLBACK TRAN
SELECT *FROM Osooba


BEGIN TRAN
INSERT INTO Osooba(Ime,prezime)
Values('Ana','Miric')
SAVE TRAN save6
INSERT INTO Osooba(Ime,prezime)
Values('Iva','Miric')
ROLLBACK TRAN save6;
COMMIT TRAN
SELECT * FROM OSooba