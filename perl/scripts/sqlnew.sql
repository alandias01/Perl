USE []
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[]
(
           @Ticker nvarchar(255),
           @Cusip nvarchar(255),
           @Quantity float)


AS
BEGIN
	SET NOCOUNT ON;


INSERT INTO [alansfirstday].[dbo].[269]
           ([Ticker]
           ,[Cusip]
           ,[Quantity])
     VALUES
(
@Ticker,
@Cusip,
@Quantity)
END


