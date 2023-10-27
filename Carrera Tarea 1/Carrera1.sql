USE [Carrera1]
GO
/****** Object:  Table [dbo].[Asignaturas]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaturas](
	[id_asignatura] [int] IDENTITY(1,1) NOT NULL,
	[nombre_asignatura] [varchar](30) NULL,
 CONSTRAINT [pk_Asignatura] PRIMARY KEY CLUSTERED 
(
	[id_asignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carreras]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carreras](
	[id_Carrera] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NULL,
 CONSTRAINT [pk_Carrera] PRIMARY KEY CLUSTERED 
(
	[id_Carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Carrera]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Carrera](
	[id_Carrera] [int] NOT NULL,
	[id_DetCar] [int] IDENTITY(1,1) NOT NULL,
	[AnioCursado] [datetime] NULL,
	[Cuatrimestre] [int] NULL,
	[id_asignatura] [int] NULL,
 CONSTRAINT [pk_DC1] PRIMARY KEY CLUSTERED 
(
	[id_Carrera] ASC,
	[id_DetCar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Asignaturas] ON 
GO
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre_asignatura]) VALUES (1, N'Matemáticas')
GO
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre_asignatura]) VALUES (2, N'Física')
GO
INSERT [dbo].[Asignaturas] ([id_asignatura], [nombre_asignatura]) VALUES (3, N'Programación')
GO
SET IDENTITY_INSERT [dbo].[Asignaturas] OFF
GO
SET IDENTITY_INSERT [dbo].[Carreras] ON 
GO
INSERT [dbo].[Carreras] ([id_Carrera], [Titulo]) VALUES (1, N'tomas')
GO
INSERT [dbo].[Carreras] ([id_Carrera], [Titulo]) VALUES (17, N'Carrera Eliminada')
GO
INSERT [dbo].[Carreras] ([id_Carrera], [Titulo]) VALUES (18, N'Carrera Eliminada')
GO
INSERT [dbo].[Carreras] ([id_Carrera], [Titulo]) VALUES (19, N'Carrera Eliminada')
GO
INSERT [dbo].[Carreras] ([id_Carrera], [Titulo]) VALUES (20, N' tomas')
GO
INSERT [dbo].[Carreras] ([id_Carrera], [Titulo]) VALUES (21, N' tototo')
GO
SET IDENTITY_INSERT [dbo].[Carreras] OFF
GO
SET IDENTITY_INSERT [dbo].[Detalle_Carrera] ON 
GO
INSERT [dbo].[Detalle_Carrera] ([id_Carrera], [id_DetCar], [AnioCursado], [Cuatrimestre], [id_asignatura]) VALUES (1, 7, CAST(N'2023-10-11T00:33:26.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[Detalle_Carrera] ([id_Carrera], [id_DetCar], [AnioCursado], [Cuatrimestre], [id_asignatura]) VALUES (1, 8, CAST(N'2023-10-11T12:28:58.623' AS DateTime), 1, 2)
GO
INSERT [dbo].[Detalle_Carrera] ([id_Carrera], [id_DetCar], [AnioCursado], [Cuatrimestre], [id_asignatura]) VALUES (2, 1, CAST(N'2023-09-01T00:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[Detalle_Carrera] ([id_Carrera], [id_DetCar], [AnioCursado], [Cuatrimestre], [id_asignatura]) VALUES (2, 2, CAST(N'2023-09-01T00:00:00.000' AS DateTime), 2, 2)
GO
INSERT [dbo].[Detalle_Carrera] ([id_Carrera], [id_DetCar], [AnioCursado], [Cuatrimestre], [id_asignatura]) VALUES (17, 9, CAST(N'2023-10-01T12:33:19.000' AS DateTime), 1, 2)
GO
INSERT [dbo].[Detalle_Carrera] ([id_Carrera], [id_DetCar], [AnioCursado], [Cuatrimestre], [id_asignatura]) VALUES (18, 4, CAST(N'2023-10-10T00:00:00.000' AS DateTime), 1, 3)
GO
INSERT [dbo].[Detalle_Carrera] ([id_Carrera], [id_DetCar], [AnioCursado], [Cuatrimestre], [id_asignatura]) VALUES (19, 5, CAST(N'2023-10-11T00:00:00.000' AS DateTime), 1, 1)
GO
INSERT [dbo].[Detalle_Carrera] ([id_Carrera], [id_DetCar], [AnioCursado], [Cuatrimestre], [id_asignatura]) VALUES (20, 10, CAST(N'2023-09-03T00:00:00.000' AS DateTime), 1, 2)
GO
INSERT [dbo].[Detalle_Carrera] ([id_Carrera], [id_DetCar], [AnioCursado], [Cuatrimestre], [id_asignatura]) VALUES (21, 12, CAST(N'2023-10-05T00:00:00.000' AS DateTime), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Detalle_Carrera] OFF
GO
ALTER TABLE [dbo].[Detalle_Carrera]  WITH CHECK ADD  CONSTRAINT [fk_DC_Asignatura] FOREIGN KEY([id_asignatura])
REFERENCES [dbo].[Asignaturas] ([id_asignatura])
GO
ALTER TABLE [dbo].[Detalle_Carrera] CHECK CONSTRAINT [fk_DC_Asignatura]
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_DETALLE_CARRERA]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_DETALLE_CARRERA]
	 @idCarrera INT
AS
BEGIN
	SELECT c.Titulo,a.nombre_asignatura,d.AnioCursado,d.Cuatrimestre,a.id_asignatura
	FROM [dbo].[Carreras] c,[dbo].[Asignaturas] a,[dbo].[Detalle_Carrera] d
	WHERE c.id_Carrera=d.id_Carrera
	and d.id_asignatura=a.id_asignatura
	and @idCarrera=d.id_Carrera;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultarAsignaturas]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[sp_ConsultarAsignaturas]
AS
BEGIN
    SELECT id_asignatura, nombre_asignatura
    FROM Asignaturas;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultarCarrera]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_ConsultarCarrera]
	@titulo varchar(255)
as
begin
	SELECT *
	FROM Carreras
	WHERE ( @titulo like '%' + @titulo + '%')
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_CARRERA]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Crear el procedimiento almacenado
CREATE PROCEDURE [dbo].[SP_ELIMINAR_CARRERA]
    @idCarrera INT
AS
BEGIN
    -- Realizar el UPDATE para marcar la carrera como eliminada
    UPDATE Carreras
    SET Titulo = 'Carrera Eliminada' -- Puedes utilizar un valor específico para marcarla como eliminada
    WHERE id_Carrera = @idCarrera;

    
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DETALLE]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_DETALLE]
	@id_Carrera int,
	@anioCursado datetime,
	@Cuatrimestre int,
	@id_asignatura int
as
begin
	insert into Detalle_Carrera(id_Carrera,AnioCursado,Cuatrimestre,id_asignatura)
	values (@id_Carrera,@anioCursado,@Cuatrimestre,@id_asignatura);
	
end
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_MAESTRO]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_MAESTRO]
	@nom_carrera varchar(300),
	@id_Carrera int OUTPUT
as
begin
	insert into [dbo].[Carreras](Titulo)
	values (@nom_carrera);
	set @id_Carrera = SCOPE_IDENTITY();
end
GO
/****** Object:  StoredProcedure [dbo].[SP_MODIFICAR_MAESTRO]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_MODIFICAR_MAESTRO]
	@Titulo varchar(255),
	@id_Carrera int
AS
BEGIN
	UPDATE [dbo].[Carreras] SET Titulo = @Titulo
	WHERE id_Carrera = @id_Carrera;
	
	DELETE [dbo].[Detalle_Carrera]
	WHERE id_Carrera = @id_Carrera;
END	
GO
/****** Object:  StoredProcedure [dbo].[Sp_ProximaCarrera]    Script Date: 24/10/2023 11:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[Sp_ProximaCarrera]
@next int OUTPUT
AS
BEGIN
	SET @next = (SELECT MAX(id_carrera)+1  FROM Carreras);
END
GO
