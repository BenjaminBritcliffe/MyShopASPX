CREATE TABLE [dbo].[payment] (
    [orderid]     NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    [paymode]     VARCHAR (50)  NULL,
    [cardno]      VARCHAR (50)  NULL,
    [expirydate]  VARCHAR (50)  NULL,
    [holdername]  VARCHAR (50)  NULL,
    [address]     VARCHAR (MAX) NULL,
    [tc]          VARCHAR (50)  NULL,
    [name]        VARCHAR (50)  NULL,
    [email]       VARCHAR (50)  NULL,
    [sessionid]   VARCHAR (50)  NULL,
    CONSTRAINT [PK_payment] PRIMARY KEY CLUSTERED ([orderid] ASC)
);

