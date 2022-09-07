DROP TABLE [Reference].[MarketingInformation]

CREATE TABLE [Reference].[MarketingInformation](
	[CustomerName] [udt].[Name] NOT NULL,
	[CountryISO2] [Udt].[ISO2] NOT NULL,
	[SpendCapacity] [varchar](25) NOT NULL
)

alter table [Reference].[MarketingInformation]  with check add constraint [FK_MarketingInfo_CustomerId] foreign key([CustomerId])
references [Data].[Customer]([CustomerId])
go


 CREATE FUNCTION [Reference].[MarketingInformationByCustomer]
 (@customerName [udt].[Name])
 RETURNS TABLE
 AS
 RETURN
	(SELECT MI.CustomerName
		   ,MI.CountryISO2
		   ,MI.SpendCapacity
	FROM [Reference].[MarketingInformation] MI
	WHERE MI.CustomerName = @customerName)

SELECT * FROM Reference.MarketingInformationByCustomer('Posh Vehicles Ltd')


GO 
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Magic Motors', N'GB', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Snazzy Roadsters', N'GB', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Birmingham Executive Prestige Vehicles', N'GB', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'WunderKar', N'DE', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Casseroles Chromes', N'FR', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Le Luxe en Motion', N'CH', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Eat My Exhaust Ltd', N'GB', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'M. Pierre Dubois', N'FR', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Sondra Horowitz', N'US', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Wonderland Wheels', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'London Executive Prestige Vehicles', N'GB', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Glittering Prize Cars Ltd', N'GB', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'La Bagnole de Luxe', N'FR', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Convertible Dreams', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Alexei Tolstoi', N'GB', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'SuperSport S.A.R.L.', N'FR', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Theo Kowalski', N'US', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Peter McLuckie', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Posh Vehicles Ltd', N'GB', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Jason B. Wight', N'US', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Silver HubCaps', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Stan Collywobble', N'GB', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Glitz', N'DE', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Matterhorn Motors', N'CH', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'King Leer Cars', N'GB', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Honest Pete Motors', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Peter Smith', N'GB', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Vive La Vitesse', N'FR', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Liverpool Executive Prestige Vehicles', N'GB', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Mrs. Ivana Telford', N'GB', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Kieran O''Harris', N'GB', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Prestige Imports', N'ES', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Prestissimo!', N'IT', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Diplomatic Cars', N'BE', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Laurent Saint Yves', N'FR', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Screamin'' Wheels', N'US', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Screamin'' Wheels', N'GB', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Executive Motor Delight', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Alicia Almodovar', N'ES', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Ronaldo Bianco', N'IT', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Sport.Car', N'IT', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Autos Sportivos', N'ES', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Le Luxe en Motion', N'FR', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Screamin'' Wheels Corp', N'US', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Pierre Blanc', N'GB', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Capots Reluisants S.A.', N'FR', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Stefano DiLonghi', N'IT', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Antonio Maura', N'ES', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Stefan Van Helsing', N'BE', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Mme Anne Duport', N'FR', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Screamin'' Wheels', N'US        ', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Clubbing Cars', N'GB', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Jean-Yves Truffaut', N'FR', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Mr. Evan Telford', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Ralph Obermann', N'DE', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'ImpressTheNeighbours.Com', N'GB', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Wladimir Lacroix', N'FR', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Raimondo Delattre', N'CH', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Boris Spry', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Andrea Tarbuck', N'GB', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Beltway Prestige Driving', N'GB', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Bling Motors', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Smooth Rocking Chrome', N'IT', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'YO! Speed!', N'ES', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Stephany Rousso', N'US', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'My Shiny Sports Car Ltd.', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Flash Voitures', N'BE', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Paul Blasio', N'US', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Mary Blackhouse', N'GB', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Maurice Dujardin', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Leslie Whittington', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Mike Beeton', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Melissa Bertrand', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'El Sport', N'ES', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Bling Bling S.A.', N'FR', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Bravissima!', N'IT', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Jayden Jones', N'US', N'Some')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Expensive Shine', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Steve Docherty', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Rodolph Legler', N'DE', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Pete Spring', N'GB', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Khader El Ghannam', N'FR', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Jacques Mitterand', N'FR', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Francoise LeBrun', N'CH', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Alex McWhirter', N'GB', N'None')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Francois Chirac', N'FR', N'Immense')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Andy Cheshire', N'GB', N'Lots')
GO
INSERT [Reference].[MarketingInformation] ( [CustomerName], [CountryISO2], [SpendCapacity]) VALUES (N'Jimmy McFiddler', N'GB', N'Lots')