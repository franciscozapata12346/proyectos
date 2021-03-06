USE [master]


	
CREATE DATABASE [db_gran_colo]
GO

USE [db_gran_colo]
GO
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[Jugador]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[idJugador] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[apellido] [varchar](100) NOT NULL,
	[idClub] [int] NOT NULL,
	[idPosicion] [int] NOT NULL,
	[idEstadoActual] [int] NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[nroDoc] [int] NOT NULL,
	[tipoDoc] [int] NOT NULL,
	[costo] [float](15) NOT NULL,
 CONSTRAINT [PK_Jugador] PRIMARY KEY CLUSTERED 
(
	[idJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posicion]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posicion](
	[idPosicion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	
 CONSTRAINT [PK_Posicion] PRIMARY KEY CLUSTERED 
(
	[idPosicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoActual]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoActual](
	[idEstadoActual] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
 CONSTRAINT [PK_EstadoActual] PRIMARY KEY CLUSTERED 
(
	[idEstadoActual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    *****/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[idTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[idTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipo]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[idEquipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idDirectorTecnico] [int] NOT NULL,
	[lema] [varchar] (100) NULL,
	[color] [int] NOT NULL,
	[estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Equipo] PRIMARY KEY CLUSTERED 
(
	[idEquipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[idColor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[idColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Torneo] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Torneo](
	[idTorneo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Torneo] PRIMARY KEY CLUSTERED 
(
	[idTorneo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Club]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Club](
	[idClub] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fechaFundacion] [date] NULL,
	[nombreEstadio] [varchar](50) NOT NULL,
	[aforo] [int] NOT NULL,
	[idLocalidad] [int] NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[nroCalle] [int] NOT NULL,
 CONSTRAINT [PK_Club] PRIMARY KEY CLUSTERED 
(
	[idClub] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FechaXTorneo]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FechaXTorneo](
	[nroFecha] [int] NOT NULL,
	[idTorneo] [int] NOT NULL,
	[estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FechaXTorneo] PRIMARY KEY CLUSTERED 
(
	[nroFecha] ASC,
	[idTorneo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fecha]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fecha](
	[nroFecha] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Fecha] PRIMARY KEY CLUSTERED 
(
	[nroFecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipoXJugador]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipoXJugador](
	[idEquipo] [int] NOT NULL,
	[idJugador] [int] NOT NULL,
	[estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EquipoXJugador] PRIMARY KEY CLUSTERED 
(
	[idEquipo] ASC,
	[idJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DirectorTenico]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectorTecnico](
	[idDirectorTecnico] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[nroDoc] [int] NOT NULL,
	[tipoDoc] [int] NOT NULL,
	[nombreUsuario] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[idClubHincha] [int] NOT NULL,
	[estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DirectorTenico] PRIMARY KEY CLUSTERED 
(
	[idDirectorTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[idLocalidad] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idProvincia] [int] NOT NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[idLocalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[idProvincia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[idProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JugadorXEquipoXTorneo]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JugadorXFechaXTorneo](
	[idJugador] [int] NOT NULL,
	[nroFecha] [int] NOT NULL,
	[idTorneo] [int] NOT NULL,
	[puntaje] [float] (5) NOT NULL,
 CONSTRAINT [PK_JugadorXEquipoXTorneo] PRIMARY KEY CLUSTERED
 (
	[idJugador] ASC,
	[nroFecha] ASC,
	[idTorneo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Posicion] ON 

INSERT [dbo].[Posicion] ([idPosicion], [nombre]) VALUES (1, N'arquero')
INSERT [dbo].[Posicion] ([idPosicion], [nombre]) VALUES (2, N'defensor')
INSERT [dbo].[Posicion] ([idPosicion], [nombre]) VALUES (3, N'mediocampista')
INSERT [dbo].[Posicion] ([idPosicion], [nombre]) VALUES (4, N'delantero')
SET IDENTITY_INSERT [dbo].[Posicion] OFF

SET IDENTITY_INSERT [dbo].[TipoDocumento] ON 

INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre]) VALUES (1, N'DNI')
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre]) VALUES (2, N'CARNET DE EXTRANJERIA')
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre]) VALUES (3, N'REG. UNICO DE CONTRIBUYENTES')
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre]) VALUES (4, N'PASAPORTE')
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre]) VALUES (5, N'PARTIDA DE NACIMIENTO')
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre]) VALUES (6, N'OTROS')
SET IDENTITY_INSERT [dbo].[TipoDocumento] OFF

SET IDENTITY_INSERT [dbo].[EstadoActual] ON 

INSERT [dbo].[EstadoActual] ([idEstadoActual], [nombre]) VALUES (1, N'habilitado')
INSERT [dbo].[EstadoActual] ([idEstadoActual], [nombre]) VALUES (2, N'suspendido')
INSERT [dbo].[EstadoActual] ([idEstadoActual], [nombre]) VALUES (3, N'lesionado')
INSERT [dbo].[EstadoActual] ([idEstadoActual], [nombre]) VALUES (4, N'en riesgo(4 amarillas)')
SET IDENTITY_INSERT [dbo].[EstadoActual] OFF

SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([idColor], [nombre]) VALUES (1, N'Azul')
INSERT [dbo].[Color] ([idColor], [nombre]) VALUES (2, N'Rojo')
INSERT [dbo].[Color] ([idColor], [nombre]) VALUES (3, N'Verde')
INSERT [dbo].[Color] ([idColor], [nombre]) VALUES (4, N'Amarillo')
INSERT [dbo].[Color] ([idColor], [nombre]) VALUES (5, N'Naranja')
INSERT [dbo].[Color] ([idColor], [nombre]) VALUES (6, N'Gris')
INSERT [dbo].[Color] ([idColor], [nombre]) VALUES (7, N'Negro')
INSERT [dbo].[Color] ([idColor], [nombre]) VALUES (8, N'Violeta')
INSERT [dbo].[Color] ([idColor], [nombre]) VALUES (9, N'Rosa')
INSERT [dbo].[Color] ([idColor], [nombre]) VALUES (10, N'Celeste')
SET IDENTITY_INSERT [dbo].[Color] OFF

SET IDENTITY_INSERT [dbo].[Provincia] ON 

INSERT [dbo].[Provincia] ([idProvincia], [nombre]) VALUES (1, N'Buenos Aires')
INSERT [dbo].[Provincia] ([idProvincia], [nombre]) VALUES (2, N'Cordoba')
INSERT [dbo].[Provincia] ([idProvincia], [nombre]) VALUES (3, N'Santa Fe')
INSERT [dbo].[Provincia] ([idProvincia], [nombre]) VALUES (4, N'Mendoza')
SET IDENTITY_INSERT [dbo].[Provincia] OFF

SET IDENTITY_INSERT [dbo].[Localidad] ON 

INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvincia]) VALUES (1, N'Buenos Aires', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvincia]) VALUES (2, N'Avellaneda', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvincia]) VALUES (3, N'La plata', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvincia]) VALUES (4, N'Lanus', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvincia]) VALUES (5, N'Banfield', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvincia]) VALUES (6, N'Cordoba', 2)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvincia]) VALUES (7, N'Santa Fe', 3)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvincia]) VALUES (8, N'Rosario', 3)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvincia]) VALUES (9, N'Godoy Cruz', 4)
SET IDENTITY_INSERT [dbo].[Localidad] OFF

SET IDENTITY_INSERT [dbo].[Club] ON 

INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (1, N'Boca Juniors', CAST(N'1905-04-03' AS Date), N'La bombonera', N'49000', 1, N'Brandsen', N'805')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (2, N'River Plate', CAST(N'1901-05-25' AS Date), N'El monumental', N'70074', 1, N'Av. Figueroa Alcorta', N'7597')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (3, N'Racing', CAST(N'1903-03-25' AS Date), N'El cilindro de Avellaneda', N'60000', 2, N'Diego A. Milito', N'500')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (4, N'Independiente', CAST(N'1905-01-01' AS Date), N'El libertadores de america', N'52300', 2, N'Ricardo Enrique Bochini', N'701')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (5, N'Estudiantes', CAST(N'1905-08-04' AS Date), N'Estadio Jorge Luis Hirschi', N'30018', 3, N'Av. 1', N'1100')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (6, N'Gimnasia', CAST(N'1887-07-03' AS Date), N'El Bosque', N'31500', 3, N'Av. 60', N'74')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (7, N'Lanus', CAST(N'1915-01-03' AS Date), N'La fortaleza', N'47027', 4, N'Ramon Cabrero', N'2100')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (8, N'Banfield', CAST(N'1896-01-21' AS Date), N'Florencio Sola', N'34901', 5, N'Arenales', N'900')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (9, N'Belgrano', CAST(N'1905-03-19' AS Date), N'El gigante de alberdi', N'32000', 6, N'Arturo Orgaz', N'550')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (10, N'Talleres', CAST(N'1913-10-12' AS Date), N'La Boutique de Barrio Jardin', N'12000', 6, N'Av. Pablo Ricchieri', N'3250')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (11, N'Colon', CAST(N'1905-05-05' AS Date), N'El cementerio de elefantes', N'47000', 7, N'Av. Juan Jose Paso', N'3535')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (12, N'Union', CAST(N'1907-04-15' AS Date), N'15 de abril', N'26500', 7, N'Av. Lopez y Planes', N'3553')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (13, N'Rosario Central', CAST(N'1889-12-24' AS Date), N'Gigante de arroyito', N'48900', 8, N'Cordiviola', N'1100')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (14, N'Newells', CAST(N'1903-11-03' AS Date), N'Marcelo Bielsa', N'42000', 8, N'Av. Int. Morcillo', N'2699')
INSERT [dbo].[Club] ([idClub], [nombre], [fechaFundacion], [nombreEstadio], [aforo], [idLocalidad], [calle], [nroCalle]) VALUES (15, N'Godoy Cruz', CAST(N'1921-06-01' AS Date), N'La bodega', N'25000', 9, N'Balcarce', N'477')
SET IDENTITY_INSERT [dbo].[Club] OFF

/* USUARIO DE PRUEBA */

SET IDENTITY_INSERT [dbo].[DirectorTecnico] ON

INSERT [dbo].[DirectorTecnico] ([idDirectorTecnico], [nombre], [apellido], [nroDoc], [tipoDoc], [nombreUsuario], [password], [email], [idClubHincha], [estado]) VALUES (1, N'juan jose', N'lopez', N'456789', 1, N'juan', N'123zxc', N'juanjose@gmail.com', 1, N'S')
INSERT [dbo].[DirectorTecnico] ([idDirectorTecnico], [nombre], [apellido], [nroDoc], [tipoDoc], [nombreUsuario], [password], [email], [idClubHincha], [estado]) VALUES (2, N'ricardo', N'perez', N'40416887', 1, N'ricardo', N'123zxc', N'ricardo@gmail.com', 4, N'S')
INSERT [dbo].[DirectorTecnico] ([idDirectorTecnico], [nombre], [apellido], [nroDoc], [tipoDoc], [nombreUsuario], [password], [email], [idClubHincha], [estado]) VALUES (3, N'roberto', N'rodriguez', N'36456887', 1, N'roberto', N'123zxc', N'roberto@gmail.com', 6, N'S')
INSERT [dbo].[DirectorTecnico] ([idDirectorTecnico], [nombre], [apellido], [nroDoc], [tipoDoc], [nombreUsuario], [password], [email], [idClubHincha], [estado]) VALUES (4, N'damian', N'sanchez', N'41223556', 1, N'damian', N'123zxc', N'damian@gmail.com', 9, N'S')

SET IDENTITY_INSERT [dbo].[DirectorTecnico] OFF

/* INSERT EQUIPOS */

SET IDENTITY_INSERT [dbo].[Equipo] ON

INSERT INTO [dbo].[Equipo] ([idEquipo], [nombre], [idDirectorTecnico], [lema], [color], [estado]) VALUES(1, 'Equipo A', 1, 'Lema A', 1, 'S')
INSERT INTO [dbo].[Equipo] ([idEquipo], [nombre], [idDirectorTecnico], [lema], [color], [estado]) VALUES(2, 'Equipo B', 2, 'Lema B', 2, 'S')
INSERT INTO [dbo].[Equipo] ([idEquipo], [nombre], [idDirectorTecnico], [lema], [color], [estado]) VALUES(3, 'Equipo C', 3, 'Lema C', 3, 'S')
INSERT INTO [dbo].[Equipo] ([idEquipo], [nombre], [idDirectorTecnico], [lema], [color], [estado]) VALUES(4, 'Equipo D', 4, 'Lema D', 4, 'S')
INSERT INTO [dbo].[Equipo] ([idEquipo], [nombre], [idDirectorTecnico], [lema], [color], [estado]) VALUES(5, 'Equipo E', 1, 'Lema E', 5, 'S')
INSERT INTO [dbo].[Equipo] ([idEquipo], [nombre], [idDirectorTecnico], [lema], [color], [estado]) VALUES(6, 'Equipo F', 2, 'Lema F', 3, 'S')
INSERT INTO [dbo].[Equipo] ([idEquipo], [nombre], [idDirectorTecnico], [lema], [color], [estado]) VALUES(7, 'Equipo G', 3, 'Lema G', 2, 'S')
INSERT INTO [dbo].[Equipo] ([idEquipo], [nombre], [idDirectorTecnico], [lema], [color], [estado]) VALUES(8, 'Equipo H', 4, 'Lema H', 4, 'S')
INSERT INTO [dbo].[Equipo] ([idEquipo], [nombre], [idDirectorTecnico], [lema], [color], [estado]) VALUES(9, 'Equipo I', 1, 'Lema I', 1, 'S')

SET IDENTITY_INSERT [dbo].[Equipo] OFF

/* INSERT JUGADORES */
SET IDENTITY_INSERT [dbo].[Jugador] ON

INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(1, 'Esteban', 'Andrada', 1, 1, 1, 'S', 28700100, 1, 30000) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(2, 'Carlos', 'Tevez', 1, 4, 1, 'S', 28700101, 1, 30002) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(3, 'Carlos', 'Izquierdoz', 1, 2, 1, 'S', 28700102, 1, 80001) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(4, 'Bebelo', 'Reynoso', 1, 3, 1, 'S', 28700103, 1, 50000) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(5, 'Franco', 'Armani', 2, 1, 1, 'S', 28700104, 1, 70000) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(6, 'Javier', 'Pinola', 2, 2, 1, 'S', 28700105, 1, 80000) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(7, 'Leo', 'Ponzio', 2, 3, 1, 'S', 28700106, 1, 30000) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(8, 'Ignacio', 'Scocco', 2, 4, 1, 'S', 28700107, 1, 40000) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(9, 'Gabriel', 'Arias', 3, 1, 1, 'S', 28700108, 1, 30060) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(10, 'Ivan', 'Pillud', 3, 2, 1, 'S', 28700109, 1, 50500) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(11, 'Marcelo', 'Diaz', 3, 3, 1, 'S', 28700110, 1, 30400) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(12, 'Lisandro', 'Lopez', 3, 4, 1, 'S', 28700120, 1, 32000) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(13, 'Martin', 'Campaña', 4, 1, 1, 'S', 28700130, 1, 35000) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(14, 'Alan', 'Franco', 4, 2, 1, 'S', 28700140, 1, 31000) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(15, 'Pablo', 'Perez', 4, 3, 1, 'S', 28700150, 1, 30500) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(16, 'Martin', 'Benitez', 4, 4, 1, 'S', 28700160, 1, 30060) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(17, 'Mariano', 'Andujar', 5, 1, 1, 'S', 28700170, 1, 70700) 
INSERT INTO [dbo].[Jugador] ([idJugador], [nombre], [apellido], [idClub], [idPosicion], [idEstadoActual], [estado], [nroDoc], [tipoDoc], [costo]) VALUES(18, 'Dayro', 'Moreno', 10, 4, 1, 'S', 28700180, 1, 80080) 

SET IDENTITY_INSERT [dbo].[Jugador] OFF

/* INSERT EQUIPOXJUGADOR */
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(1, 1, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(1, 2, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(1, 3, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(1, 4, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(1, 7, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(1, 9, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(1, 10, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(2, 5, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(2, 6, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(2, 7, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(2, 8, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(2, 13, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(2, 14, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(2, 15, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(3, 1, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(3, 6, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(3, 7, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(3, 4, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(3, 5, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(3, 16, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(3, 18, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(4, 5, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(4, 2, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(4, 3, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(4, 13, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(4, 14, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(4, 15, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(4, 17, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(5, 1, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(5, 13, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(5, 10, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(5, 9, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(5, 8, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(5, 17, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(5, 14, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(6, 5, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(6, 9, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(6, 12, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(6, 11, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(6, 15, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(6, 4, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(6, 7, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(7, 1, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(7, 2, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(7, 3, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(7, 7, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(7, 8, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(7, 15, 'S')
INSERT INTO [dbo].[EquipoXJugador] ([idEquipo], [idJugador], [estado]) VALUES(7, 12, 'S')


/* INSERT FECHA */
SET IDENTITY_INSERT [dbo].[Fecha] ON
INSERT INTO [dbo].[Fecha] ([nroFecha], [nombre], [estado]) VALUES (1, 'Fecha 1', 'S')
INSERT INTO [dbo].[Fecha] ([nroFecha], [nombre], [estado]) VALUES (2, 'Fecha 2', 'S')
INSERT INTO [dbo].[Fecha] ([nroFecha], [nombre], [estado]) VALUES (3, 'Fecha 3', 'S')
INSERT INTO [dbo].[Fecha] ([nroFecha], [nombre], [estado]) VALUES (4, 'Fecha 4', 'S')
INSERT INTO [dbo].[Fecha] ([nroFecha], [nombre], [estado]) VALUES (5, 'Fecha 5', 'S')
INSERT INTO [dbo].[Fecha] ([nroFecha], [nombre], [estado]) VALUES (6, 'Fecha 6', 'S')
INSERT INTO [dbo].[Fecha] ([nroFecha], [nombre], [estado]) VALUES (7, 'Fecha 7', 'S')
INSERT INTO [dbo].[Fecha] ([nroFecha], [nombre], [estado]) VALUES (8, 'Fecha 8', 'S')
SET IDENTITY_INSERT [dbo].[Fecha] OFF

/* INSERT TORNEO */
SET IDENTITY_INSERT [dbo].[Torneo] ON
INSERT INTO [dbo].[Torneo] ([idTorneo], [nombre], [estado]) VALUES (1, 'Torneo Argentino', 'S')
INSERT INTO [dbo].[Torneo] ([idTorneo], [nombre], [estado]) VALUES (2, 'Liga Española', 'S')
INSERT INTO [dbo].[Torneo] ([idTorneo], [nombre], [estado]) VALUES (3, 'Premier League', 'S')
INSERT INTO [dbo].[Torneo] ([idTorneo], [nombre], [estado]) VALUES (4, 'Copa Argentina', 'S')
SET IDENTITY_INSERT [dbo].[Torneo] OFF

/* INSERT FechaXTorneo */
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (1, 1, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (2, 1, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (3, 1, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (4, 1, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (5, 1, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (6, 1, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (7, 1, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (8, 1, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (1, 2, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (2, 2, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (3, 2, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (4, 2, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (5, 2, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (6, 2, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (7, 2, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (8, 2, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (1, 3, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (2, 3, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (3, 3, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (4, 3, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (5, 3, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (6, 3, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (7, 3, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (8, 3, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (1, 4, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (2, 4, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (3, 4, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (4, 4, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (5, 4, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (6, 4, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (7, 4, 'S')
INSERT INTO [dbo].[FechaXTorneo] ([nroFecha], [idTorneo], [estado]) VALUES (8, 4, 'S')


/* INSERT JugadorXFechaXTorneo */
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (1, 1, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (1, 2, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (1, 3, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (1, 4, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (1, 5, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (1, 6, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (1, 7, 1, 9)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (1, 8, 1, 1)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (2, 1, 1, 6)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (2, 2, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (2, 3, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (2, 4, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (2, 5, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (2, 6, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (2, 7, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (2, 8, 1, 6)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (3, 1, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (3, 2, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (3, 3, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (3, 4, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (3, 5, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (3, 6, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (3, 7, 1, 9)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (3, 8, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (4, 1, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (4, 2, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (4, 3, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (4, 4, 1, 3)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (4, 5, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (4, 6, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (4, 7, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (4, 8, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (5, 1, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (5, 2, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (5, 3, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (5, 4, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (5, 5, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (5, 6, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (5, 7, 1, 9)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (5, 8, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (6, 1, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (6, 2, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (6, 3, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (6, 4, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (6, 5, 1, 3)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (6, 6, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (6, 7, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (6, 8, 1, 1)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (7, 1, 1, 1)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (7, 2, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (7, 3, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (7, 4, 1, 9)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (7, 5, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (7, 6, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (7, 7, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (7, 8, 1, 6)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (8, 1, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (8, 2, 1, 3)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (8, 3, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (8, 4, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (8, 5, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (8, 6, 1, 9)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (8, 7, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (8, 8, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (9, 1, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (9, 2, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (9, 3, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (9, 4, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (9, 5, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (9, 6, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (9, 7, 1, 9)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (9, 8, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (10, 1, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (10, 2, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (10, 3, 1, 6)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (10, 4, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (10, 5, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (10, 6, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (10, 7, 1, 9)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (10, 8, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (11, 1, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (11, 2, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (11, 3, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (11, 4, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (11, 5, 1, 9)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (11, 6, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (11, 7, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (11, 8, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (12, 1, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (12, 2, 1, 3)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (12, 3, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (12, 4, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (12, 5, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (12, 6, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (12, 7, 1, 6)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (12, 8, 1, 3)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (13, 1, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (13, 2, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (13, 3, 1, 1)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (13, 4, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (13, 5, 1, 3)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (13, 6, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (13, 7, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (13, 8, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (14, 1, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (14, 2, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (14, 3, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (14, 4, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (14, 5, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (14, 6, 1, 6)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (14, 7, 1, 7)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (14, 8, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (15, 1, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (15, 2, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (15, 3, 1, 9)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (15, 4, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (15, 5, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (15, 6, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (15, 7, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (15, 8, 1, 3)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (16, 1, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (16, 2, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (16, 3, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (16, 4, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (16, 5, 1, 3)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (16, 6, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (16, 7, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (16, 8, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (17, 1, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (17, 2, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (17, 3, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (17, 4, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (17, 5, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (17, 6, 1, 3)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (17, 7, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (17, 8, 1, 5)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (18, 1, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (18, 2, 1, 4)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (18, 3, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (18, 4, 1, 10)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (18, 5, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (18, 6, 1, 8)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (18, 7, 1, 2)
INSERT INTO [dbo].[JugadorXFechaXTorneo] ([idJugador], [nroFecha], [idTorneo], [puntaje]) VALUES (18, 8, 1, 3)

ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_Club] FOREIGN KEY([idClub])
REFERENCES [dbo].[Club] ([idClub])
GO
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_Club]
GO
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_Posicion] FOREIGN KEY([idPosicion])
REFERENCES [dbo].[Posicion] ([idPosicion])
GO
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_Posicion]
GO
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_EstadoActual] FOREIGN KEY([idEstadoActual])
REFERENCES [dbo].[EstadoActual] ([idEstadoActual])
GO
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_EstadoActual]
GO
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_TipoDocumento] FOREIGN KEY([tipoDoc])
REFERENCES [dbo].[TipoDocumento] ([idTipoDocumento])
GO
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_TipoDocumento]
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_DirectorTecnico] FOREIGN KEY([idDirectorTecnico])
REFERENCES [dbo].[DirectorTecnico] ([idDirectorTecnico])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_DirectorTecnico]
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_Color] FOREIGN KEY([color])
REFERENCES [dbo].[Color] ([idColor])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Color]
GO
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [FK_Club_Localidad] FOREIGN KEY([idLocalidad])
REFERENCES [dbo].[Localidad] ([idLocalidad])
GO
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [FK_Club_Localidad]
GO
ALTER TABLE [dbo].[FechaXTorneo]  WITH CHECK ADD  CONSTRAINT [FK_FechaXTorneo_Torneo] FOREIGN KEY([idTorneo])
REFERENCES [dbo].[Torneo] ([idTorneo]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FechaXTorneo] CHECK CONSTRAINT [FK_FechaXTorneo_Torneo]
GO
ALTER TABLE [dbo].[FechaXTorneo]  WITH CHECK ADD  CONSTRAINT [FK_FechaXTorneo_Fecha] FOREIGN KEY([nroFecha])
REFERENCES [dbo].[Fecha] ([nroFecha]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FechaXTorneo] CHECK CONSTRAINT [FK_FechaXTorneo_Fecha]
GO
ALTER TABLE [dbo].[EquipoXJugador]  WITH CHECK ADD  CONSTRAINT [FK_EquipoXJugador_Equipo] FOREIGN KEY([idEquipo])
REFERENCES [dbo].[Equipo] ([idEquipo]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipoXJugador] CHECK CONSTRAINT [FK_EquipoXJugador_Equipo]
GO
ALTER TABLE [dbo].[EquipoXJugador]  WITH CHECK ADD  CONSTRAINT [FK_EquipoXJugador_Jugador] FOREIGN KEY([idJugador])
REFERENCES [dbo].[Jugador] ([idJugador]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipoXJugador] CHECK CONSTRAINT [FK_EquipoXJugador_Jugador]
GO
ALTER TABLE [dbo].[DirectorTecnico]  WITH CHECK ADD  CONSTRAINT [FK_DirectorTecnico_TipoDocumento] FOREIGN KEY([tipoDoc])
REFERENCES [dbo].[TipoDocumento] ([idTipoDocumento])
GO
ALTER TABLE [dbo].[DirectorTecnico] CHECK CONSTRAINT [FK_DirectorTecnico_TipoDocumento]
GO
ALTER TABLE [dbo].[DirectorTecnico]  WITH CHECK ADD  CONSTRAINT [FK_DirectorTecnico_Club] FOREIGN KEY([idClubHincha])
REFERENCES [dbo].[Club] ([idClub])
GO
ALTER TABLE [dbo].[DirectorTecnico] CHECK CONSTRAINT [FK_DirectorTecnico_Club]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Localidad_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_Localidad_Provincia]
GO
ALTER TABLE [dbo].[JugadorXFechaXTorneo]  WITH CHECK ADD  CONSTRAINT [FK_JugadorXFechaXTorneo_Jugador] FOREIGN KEY([idJugador])
REFERENCES [dbo].[Jugador] ([idJugador])
GO
ALTER TABLE [dbo].[JugadorXFechaXTorneo] CHECK CONSTRAINT [FK_JugadorXFechaXTorneo_Jugador]
GO
ALTER TABLE [dbo].[JugadorXFechaXTorneo] WITH CHECK ADD CONSTRAINT [FK_JugadorXFechaXTorneo_FechaXTorneo] FOREIGN KEY ([nroFecha], [idTorneo])
REFERENCES [dbo].[FechaXTorneo] ([nroFecha], [idTorneo])
GO
ALTER TABLE [dbo].[JugadorXFechaXTorneo] CHECK CONSTRAINT [FK_JugadorXFechaXTorneo_FechaXTorneo]
GO
USE [master]
GO
ALTER DATABASE [db_gran_colo] SET  READ_WRITE 
GO
