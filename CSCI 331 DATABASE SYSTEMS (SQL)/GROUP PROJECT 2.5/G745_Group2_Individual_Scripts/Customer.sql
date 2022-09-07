USE [PrestigeCars]

GO
CREATE TYPE [Udt].[ISO2] FROM [nchar](2) NULL

CREATE TYPE [Udt].[address] FROM [nvarchar](30) NULL
GO
---------------------------------------
--creating primary key CUSTOMERID HERE to be REFERENCED IN OTHER TABLES
CREATE TABLE [Data].[Customer](
	[CustomerId] [Udt].[SurrogateKeyInt] identity(1,1) not null,
	[CustomerName] [udt].[Name] NOT NULL,
	[Address1] [Udt].[address] NOT NULL,
	[Address2] [Udt].[address] NULL,
	[Town] [udt].[Name] NULL,
	[PostCode] [udt].[Name] NULL,
	[CountryISO2] [Udt].[ISO2] NOT NULL,
	[IsCreditRisk] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

SELECT * FROM Data.Customer

SELECT * FROM [Data].[Customer]


alter table [Data].[Customer]  with check add constraint [FK_Country] foreign key(CountryISO2)
references [Data].[Country] ([CountryISO2])
go

alter table [Data].[Customer] check constraint [FK_Customer_CountryId]
go

alter table [Data].[Sales]  with check add constraint [FK_Sales_CustomerId] foreign key([CustomerId])
references [Data].[Customer] ([CustomerId])
go

INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Magic Motors', N'27, Handsworth Road', NULL, N'Birmingham', N'B1 7AZ', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Snazzy Roadsters', N'102, Bleak Street', NULL, N'Birmingham', N'B3 5ST', N'GB', 1)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Birmingham Executive Prestige Vehicles', N'96, Aardvark Avenue', NULL, N'Birmingham', N'B2 8UH', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES (N'WunderKar', N'AlexanderPlatz 205', NULL, N'Berlin', NULL, N'DE', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Casseroles Chromes', N'29, Rue Gigondas', NULL, N'Lyon', NULL, N'FR', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Le Luxe en Motion', N'Avenue des Indes, 26', NULL, N'Geneva', N'CH-1201', N'CH', 1)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Eat My Exhaust Ltd', N'29, Kop Hill', NULL, N'Liverpool', N'L1 8UY', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'M. Pierre Dubois', N'14, Rue De La Hutte', NULL, N'Marseille', NULL, N'FR', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Sondra Horowitz', N'10040 Great Western Road', NULL, N'Los Angeles', NULL, N'US', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES (N'Wonderland Wheels', N'57, Grosvenor Estate Avenue', NULL, N'London', N'E7 4BR', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'London Executive Prestige Vehicles', N'199, Park Lane', NULL, N'London', N'NW1 0AK', N'GB', 1)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Glittering Prize Cars Ltd', N'46, Golders Green Road', N'PO Box 27', N'London', N'E17 9IK', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'La Bagnole de Luxe', N'890 Place de la Concorde', N'Cedex 8', N'Paris', NULL, N'FR', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Convertible Dreams', N'31, Archbishop Ave', NULL, N'London', N'SW2 6PL', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Alexei Tolstoi', N'83, Abbey Road', NULL, N'London', N'N4 2CV', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'SuperSport S.A.R.L.', N'210 Place de la Republique', NULL, N'Paris', NULL, N'FR', 1)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Theo Kowalski', N'1000 East 51st Street', NULL, N'New York', NULL, N'US',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Peter McLuckie', N'73, Entwhistle Street', NULL, N'London', N'W10 BN', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Posh Vehicles Ltd', N'82, Millar Close', NULL, N'Manchester', N'M4 5SD', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Jason B. Wight', N'5300 Star Boulevard', NULL, N'Washington', NULL, N'US', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Silver HubCaps', N'54, Didsbury Lane', NULL, N'Manchester', N'M1 7TH', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Stan Collywobble', N'65, Townsend Road', NULL, N'Manchester', N'M1 5HJ', N'GB', 1)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Glitz', N'FriedrichStrasse 579', NULL, N'Stuttgart', NULL, N'DE', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Matterhorn Motors', N'1, Rue de la Colline', NULL, N'Lausanne', NULL, N'CH', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'King Leer Cars', N'87, Lindisfarne Road', NULL, N'Newcastle', N'NE1 4OX', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Honest Pete Motors', N'76, Williams Street', NULL, N'Stoke', N'ST3 9XY', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Peter Smith', N'82, Ell Pie Lane', NULL, N'Birmingham', N'B5 5SD', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Vive La Vitesse', N'56, Rue Noiratre', NULL, N'Marseille', NULL, N'FR', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Liverpool Executive Prestige Vehicles', N'8, Everton Avenue', NULL, N'Liverpool', N'L2 2RD', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Mrs. Ivana Telford', N'52, Gerrard Mansions', NULL, N'Liverpool', N'L2 9RT', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Kieran O''Harris', N'71, Askwith Ave', NULL, N'Liverpool', N'L7 6OP', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Prestige Imports', N'Gran Via 26', NULL, N'Barcelona', N'08120', N'ES', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Prestissimo!', N'Via Appia 239', NULL, N'Milan', NULL, N'IT', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Diplomatic Cars', N'Rue Des Coteaux, 39', NULL, N'Brussels', NULL, N'BE', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Laurent Saint Yves', N'49, Rue Quicampoix', NULL, N'Marseille', NULL, N'FR', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Screamin'' Wheels', N'1090 Reagan Road', NULL, N'Los Angeles', NULL, N'US', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Screamin'' Wheels', N'4, Churchill Close', NULL, N'London', N'SE1 5RU', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Executive Motor Delight', N'17, The Brambles', NULL, N'London', N'SE17 6AD', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Alicia Almodovar', N'Palacia Del Sol', NULL, N'Barcelona', N'08400', N'ES', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Ronaldo Bianco', N'Palazzo Medusa 2000', NULL, N'Milan', NULL, N'IT', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Sport.Car', N'Via Barberini 59', NULL, N'Rome', N'00120', N'IT',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Autos Sportivos', N'Paseo del Prado, 270', NULL, N'Madrid', NULL, N'ES', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Le Luxe en Motion', N'32, Allee de la Paix', NULL, N'Paris', NULL, N'FR', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Screamin'' Wheels Corp', N'50000 Fifth Avenue', NULL, N'New York', NULL, N'US', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Pierre Blanc', N'52 Deirdre Lane', NULL, N'London', N'C1 3EJ', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Capots Reluisants S.A.', N'567 rue Lafayette', NULL, N'Paris', NULL, N'FR', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Stefano DiLonghi', N'Piazza Verona', NULL, N'Rome', N'00129', N'IT', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Antonio Maura', N'Puerta del Sol, 45', NULL, N'Madrid', NULL, N'ES', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Stefan Van Helsing', N'Nieuwstraat 5', NULL, N'Brussels', NULL, N'BE', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Mme Anne Duport', N'90, Place de la Victoire 1945', NULL, N'Paris', NULL, N'FR', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Screamin'' Wheels', N'10500 The Potomac', NULL, N'Washington', NULL, N'US',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Clubbing Cars', N'91, Acid Avenue', NULL, N'Manchester', N'M5 9RD', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Jean-Yves Truffaut', N'87 Rue du Combat', NULL, N'Paris', NULL, N'FR',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Mr. Evan Telford', N'7, Godzilla Street', NULL, N'Manchester', N'M2 6KL', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Ralph Obermann', N'BerolinaStrasse 210', NULL, N'Berlin', NULL, N'DE',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'ImpressTheNeighbours.Com', N'47, Edgbaston Row', NULL, N'Birmingham', N'B4 4RY', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Wladimir Lacroix', N'3, Rue de la Vie en Rose', NULL, N'Lyon', NULL, N'FR', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES (N'Raimondo Delattre', N'9, Place de Chatelet', NULL, N'Geneva', N'CH-1211', N'CH',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Boris Spry', N'53, Odeon Way', NULL, N'Birmingham', N'B1 4BZ', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Andrea Tarbuck', N'2,Newcastle Lane', NULL, N'Birmingham', N'B4 8SG', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Beltway Prestige Driving', N'1, Smithy Close', NULL, N'Liverpool', N'L1 WS', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Bling Motors', N'2, Arndale Lane', NULL, N'Liverpool', N'L3 QS', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Smooth Rocking Chrome', N'Via Stromboli 2', NULL, N'Milan', NULL, N'IT', 1)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'YO! Speed!', N'Plaza Mayor', NULL, N'Barcelona', N'08550', N'ES', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Stephany Rousso', N'10180 Orange County Place', NULL, N'Los Angeles', NULL, N'US', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'My Shiny Sports Car Ltd.', N'1091, Cambride Street', NULL, N'London', N'W1 3GH', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Flash Voitures', N'Place Anspach 85', NULL, N'Brussels', NULL, N'BE',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Paul Blasio', N'50500 JFK Square', NULL, N'New York', NULL, N'US',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES (N'Mary Blackhouse', N'260, Oxford Avenue', NULL, N'London', N'E1 9AP', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Maurice Dujardin', N'10, Daltrey Lane', NULL, N'London', N'NW1 7YU', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Leslie Whittington', N'17, Mercury Street', NULL, N'London', N'SE1 4AT', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES (N'Mike Beeton', N'Green Plaza Place', NULL, N'London', N'SW13 7ED', N'GB',1)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Melissa Bertrand', N'7, Westlands Street', NULL, N'London', N'NW10 2SG', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'El Sport', N'Plaza San Andres', NULL, N'Madrid', NULL, N'ES',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Bling Bling S.A.', N'7, Place de la Richesse', N'Z.I Les Arnaques', N'Paris', NULL, N'FR',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Bravissima!', N'Via Rosso, 34', NULL, N'Rome', N'00175', N'IT', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Jayden Jones', N'10500 Lincoln Square', NULL, N'Washington', NULL, N'US',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Expensive Shine', N'89, Abbots Lane', NULL, N'Manchester', N'M17 3EF', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Steve Docherty', N'5, Albermarle Avenue', NULL, N'Manchester', N'M7 9AS', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Rodolph Legler', N'SingerStrasse 89', NULL, N'Stuttgart', NULL, N'DE',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Pete Spring', N'53, Pimlico Square', NULL, N'Manchester', N'M3 4WR', N'GB', 1)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Khader El Ghannam', N'10, rue de Jemappes', N'4eme etage', N'Paris', NULL, N'FR',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Jacques Mitterand', N'1 Quai des Pertes', NULL, N'Paris', NULL, N'FR',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Francoise LeBrun', N'56, Rue Verte', NULL, N'Lausanne', NULL, N'CH', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Alex McWhirter', N'89, Harlequin Road', NULL, N'Newcastle', N'NE1 7DH', N'GB',0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Francois Chirac', N'2, Quai de l''Enfer', NULL, N'Paris', NULL, N'FR', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Andy Cheshire', N'7, Wedgewood Steet', NULL, N'Stoke', N'ST4 2OZ', N'GB', 0)
GO
INSERT [Data].[Customer] ( [CustomerName], [Address1], [Address2], [Town], [PostCode], [CountryISO2], [IsCreditRisk]) VALUES ( N'Jimmy McFiddler', N'57, Smile Square', NULL, N'Glasgow', N'G15 1AA', N'GB',1)
GO


