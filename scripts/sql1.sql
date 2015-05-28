INSERT INTO [Apex].[dbo].[TradeFeed]
           ([InternalSource]
           ,[InternalSourceId]
           ,[BookName]
           ,[DateEntered]
           ,[EnteredBy]
           ,[DateSentToApex]
           ,[DateConfirmedFromApex]
           ,[ApexMessage]
           ,[Source]
           ,[ExternalId2]
           ,[LegalEntity]
           ,[TradeType]
           ,[Account]
           ,[Counterparty]
           ,[SecurityType]
           ,[SecurityId]
           ,[StartDate]
           ,[EndDate]
           ,[Quantity]
           ,[Rate]
           ,[CleanPrice]
           ,[StartPrice]
           ,[EndPrice]
           ,[CashCurrency]
           ,[StartCash]
           ,[EndCash]
           ,[MultiplyFxRate]
           ,[StartFxRate]
           ,[EndFxRate]
           ,[Trader]
           ,[TradeDate]
           ,[EndTradeDate]
           ,[Spread]
           ,[Haircut]
           ,[IncludeHaircut]
           ,[SysComments]
           ,[DivPercentage]
           ,[Fee]
           ,[MarkType]
           ,[Ticker]
           ,[SecurityDescription]
           ,[IdBBGlobal]
           ,[SecurityCurrency]
           ,[TradeSID]
           ,[Status]
           ,[BargainReference]
           ,[SettleDate]
           ,[SettleTrade]
           ,[CustodianAccountShortCode]
           ,[SourceFileDate]
           ,[DeliveryMethod]
           ,[NostroAccountShortCode]
           ,[CashSettleDate]
           ,[CashPoolIndicator]
           ,[BroadridgeId]
           ,[Cusip]
           ,[InstructFlag]
           ,[RepostCount])
     VALUES
           (<InternalSource, varchar(300),>
           ,<InternalSourceId, int,>
           ,<BookName, varchar(50),>
           ,<DateEntered, datetime,>
           ,<EnteredBy, varchar(50),>
           ,<DateSentToApex, datetime,>
           ,<DateConfirmedFromApex, datetime,>
           ,<ApexMessage, varchar(200),>
           ,<Source, varchar(16),>
           ,<ExternalId2, varchar(100),>
           ,<LegalEntity, varchar(50),>
           ,<TradeType, varchar(30),>
           ,<Account, varchar(40),>
           ,<Counterparty, varchar(50),>
           ,<SecurityType, varchar(50),>
           ,<SecurityId, varchar(50),>
           ,<StartDate, datetime,>
           ,<EndDate, datetime,>
           ,<Quantity, float,>
           ,<Rate, float,>
           ,<CleanPrice, float,>
           ,<StartPrice, float,>
           ,<EndPrice, float,>
           ,<CashCurrency, varchar(20),>
           ,<StartCash, float,>
           ,<EndCash, float,>
           ,<MultiplyFxRate, bit,>
           ,<StartFxRate, float,>
           ,<EndFxRate, float,>
           ,<Trader, varchar(40),>
           ,<TradeDate, datetime,>
           ,<EndTradeDate, datetime,>
           ,<Spread, float,>
           ,<Haircut, float,>
           ,<IncludeHaircut, bit,>
           ,<SysComments, varchar(2000),>
           ,<DivPercentage, float,>
           ,<Fee, float,>
           ,<MarkType, char(1),>
           ,<Ticker, varchar(100),>
           ,<SecurityDescription, varchar(200),>
           ,<IdBBGlobal, varchar(50),>
           ,<SecurityCurrency, varchar(20),>
           ,<TradeSID, varchar(10),>
           ,<Status, char(1),>
           ,<BargainReference, varchar(50),>
           ,<SettleDate, datetime,>
           ,<SettleTrade, bit,>
           ,<CustodianAccountShortCode, varchar(100),>
           ,<SourceFileDate, datetime,>
           ,<DeliveryMethod, varchar(10),>
           ,<NostroAccountShortCode, varchar(100),>
           ,<CashSettleDate, datetime,>
           ,<CashPoolIndicator, bit,>
           ,<BroadridgeId, varchar(50),>
           ,<Cusip, varchar(50),>
           ,<InstructFlag, bit,>
           ,<RepostCount, int,>)
GO


