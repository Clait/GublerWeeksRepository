CREATE PROCEDURE GetAllAuthorNames
	
AS
	SELECT [au_id], [au_lname], [au_fname] FROM [authors] 
RETURN
GO


CREATE PROCEDURE GetAuthorInfoByID
	(
	@au_id varchar(11)
	)
	
AS
	SELECT [au_id], [au_lname], [au_fname], [phone], [address], [city], [contract], [zip], [state] FROM [authors] 
WHERE [au_id] = @au_id
RETURN
GO

CREATE PROCEDURE UpdateAuthor
	
	(
	@au_id varchar(11),
	@au_lname varchar(40),
	@au_fname varchar(20),
	@phone varchar(12),
	@address varchar(40),
	@city varchar(20),
	@contract bit,
	@state char(2),
	@zip char(5)
	)
	
AS
	UPDATE [authors] SET [au_lname] = @au_lname, [au_fname] = @au_fname, [phone] = @phone, [address] = 	@address, [city] = @city, [contract] = @contract, [zip] = @zip, [state] = @state WHERE [au_id] = @au_id
RETURN
GO


CREATE PROCEDURE InsertAuthor
	
	(
	@au_id varchar(11),
	@au_lname varchar(40),
	@au_fname varchar(20),
	@phone varchar(12),
	@address varchar(40),
	@city varchar(20),
	@contract bit,
	@state char(2),
	@zip char(5)
	)
	
AS
	INSERT INTO [authors] ([au_id], [au_lname], [au_fname], [phone], [address], [city], [contract], [zip], [state]) VALUES (@au_id, @au_lname, @au_fname, @phone, @address, @city, @contract, @zip, @state)
RETURN
GO


CREATE PROCEDURE DeleteAuthor
	
	(
	@au_id varchar(11)	
	)
	
AS
	DELETE FROM [authors] WHERE [au_id] = @au_id
RETURN
GO
