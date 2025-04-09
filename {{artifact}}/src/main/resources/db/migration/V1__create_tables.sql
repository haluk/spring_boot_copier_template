CREATE SEQUENCE dbo.Client_Id_Seq
    START WITH 1
    INCREMENT BY 50;
GO

CREATE TABLE dbo.Client
(
    Id         BIGINT         NOT NULL,
    CreatedAt  DATETIME       NOT NULL,
    UpdatedAt  DATETIME       NOT NULL,
    Name       VARCHAR(255)   NOT NULL,
    CompanyId  VARCHAR(255)   NOT NULL,
    CONSTRAINT PK_Client PRIMARY KEY (Id)
);
GO
