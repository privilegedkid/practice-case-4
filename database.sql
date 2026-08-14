CREATE DATABASE WebRequests;
GO

USE WebRequests;
GO

CREATE TABLE Requests (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    ClientName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100),
    RequestText NVARCHAR(500) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO

INSERT INTO Requests (ClientName, Email, RequestText)
VALUES
(N'Иван Иванов', N'ivan@mail.ru', N'Необходима консультация'),
(N'Анна Петрова', N'anna@mail.ru', N'Запрос стоимости услуги'),
(N'Сергей Смирнов', N'sergey@mail.ru', N'Необходима техническая поддержка');
GO

SELECT * FROM Requests;
GO
