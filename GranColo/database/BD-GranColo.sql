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
