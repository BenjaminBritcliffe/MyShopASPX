CREATE TABLE [dbo].[signuptable] (
    [name]     VARCHAR (50) NULL,
    [username] VARCHAR (50) NOT NULL,
    [pass]     VARCHAR (50) NULL,
    [mob]      NUMERIC (18) NULL,
    [co]       VARCHAR (50) NULL,
    [gen]      VARCHAR (50) NULL,
    [dob]      VARCHAR (50) NULL,
    [usertype] VARCHAR (50) NULL,
    CONSTRAINT [PK_signuptable] PRIMARY KEY CLUSTERED ([username] ASC)
);

