ALTER TRIGGER [dbo].[LabelUpdate] ON [dbo].[Label]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = LabelValue from deleted
	select @new =  LabelValue from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Label','LabelValue','UPDATE',@old,@new,@user,@tmp);
	PRINT 'AFTER UPDATE Trigger fired.'
	
GO
