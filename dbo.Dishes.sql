CREATE TABLE [dbo].[Dishes] (
    [Id]         INT             IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (MAX)  NOT NULL,
    [Price]      DECIMAL (18, 2) NOT NULL,
    [Quantity]   INT             NOT NULL,
    [DishTypeId] INT             NOT NULL,
    [Description] NVARCHAR(MAX) NOT NULL, 
    CONSTRAINT [PK_dbo.Dishes] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Dishes_dbo.DishTypes_DishTypeId] FOREIGN KEY ([DishTypeId]) REFERENCES [dbo].[DishTypes] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_DishTypeId]
    ON [dbo].[Dishes]([DishTypeId] ASC);

