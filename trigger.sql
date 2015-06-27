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
	
GO

CREATE TRIGGER [dbo].[LabelInsert] ON [dbo].[Label]
AFTER INSERT
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  LabelValue from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Label','LabelValue','INSERT','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[LabelDelete] ON [dbo].[Label]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = LabelValue from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Label','LabelValue','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[MenuUpdate] ON [dbo].[Menu]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	select @new =  FormName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Menu','FormName','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[MenuInsert] ON [dbo].[Menu]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  FormName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Menu','FormName','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[MenuDelete] ON [dbo].[Menu]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Menu','FormName','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[SubMenuUpdate] ON [dbo].[SubMenu]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	select @new =  FormName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('SubMenu','FormName','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[SubMenuInsert] ON [dbo].[SubMenu]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  FormName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('SubMenu','FormName','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[SubMenuDelete] ON [dbo].[SubMenu]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = FormName from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('SubMenu','FormName','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[CountryUpdate] ON [dbo].[Country]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = CountryName from deleted
	select @new =  CountryName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Country','CountryName','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[CountryInsert] ON [dbo].[Country]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  CountryName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Country','CountryName','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[CountryDelete] ON [dbo].[Country]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = CountryName from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('Country','CountryName','Delete',@old,'-',@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[StateUpdate] ON [dbo].[State]
AFTER UPDATE
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = StateName from deleted
	select @new =  StateName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('State','StateName','UPDATE',@old,@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[StateInsert] ON [dbo].[State]
AFTER Insert
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @new =  StateName from inserted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('State','StateName','Insert','-',@new,@user,@tmp);
	
GO

CREATE TRIGGER [dbo].[StateDelete] ON [dbo].[State]
AFTER Delete
AS
	DECLARE @tmp DATETIME2
	DECLARE @user NVARCHAR(100)
	DECLARE @new NVARCHAR(1000)
	DECLARE @old NVARCHAR(1000)
	SET @tmp = GETDATE()
	SET @user = USER
	select @old = StateName from deleted
	insert into dbo.History(TableName,ColumnName,Operation,OldValue,NewValue,ChangedBy,ChangeDate) values('State','StateName','Delete',@old,'-',@user,@tmp);
	
GO

