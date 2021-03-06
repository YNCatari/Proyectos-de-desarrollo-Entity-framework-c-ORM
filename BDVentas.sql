USE [BDVentas]
GO
/****** Object:  Table [dbo].[Boletas]    Script Date: 30/04/2019 1:41:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boletas](
	[Serie] [nvarchar](128) NOT NULL,
	[Numero] [nvarchar](max) NULL,
	[Fecha] [nvarchar](max) NULL,
	[Total] [float] NOT NULL,
	[Estado] [nvarchar](max) NULL,
	[Ruc] [nvarchar](128) NULL,
	[Dni] [nvarchar](128) NULL,
	[Codigo] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Boletas] PRIMARY KEY CLUSTERED 
(
	[Serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cargos]    Script Date: 30/04/2019 1:41:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargos](
	[Cargo] [nvarchar](128) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Cargos] PRIMARY KEY CLUSTERED 
(
	[Cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 30/04/2019 1:41:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Dni] [nvarchar](128) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Apellidos] [nvarchar](max) NULL,
	[Telefono] [nvarchar](max) NULL,
	[Correo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Clientes] PRIMARY KEY CLUSTERED 
(
	[Dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detalles]    Script Date: 30/04/2019 1:41:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles](
	[Serie] [nvarchar](128) NOT NULL,
	[Numero] [nvarchar](max) NULL,
	[Codigo] [nvarchar](128) NULL,
	[Cantidad] [int] NOT NULL,
	[Importe] [float] NOT NULL,
	[Boletas_Serie] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Detalles] PRIMARY KEY CLUSTERED 
(
	[Serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 30/04/2019 1:41:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Codigo] [nvarchar](128) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Apellido] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Telefono] [nvarchar](max) NULL,
	[Correo] [nvarchar](max) NULL,
	[Estado] [nvarchar](max) NULL,
	[Clave] [nvarchar](max) NULL,
	[Cargo] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Empleados] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 30/04/2019 1:41:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[Ruc] [nvarchar](128) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Telefono] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Empresas] PRIMARY KEY CLUSTERED 
(
	[Ruc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventarios]    Script Date: 30/04/2019 1:41:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventarios](
	[Codigo] [nvarchar](128) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Cantidad] [nvarchar](max) NULL,
	[Precio] [nvarchar](max) NULL,
	[Estado] [nvarchar](max) NULL,
	[Producto] [nvarchar](max) NULL,
	[Productos_Codigo] [nvarchar](128) NULL,
	[Proveedor_Dni] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Inventarios] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 30/04/2019 1:41:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[Codigo] [nvarchar](128) NOT NULL,
	[Fecha] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Total] [nvarchar](max) NULL,
	[Cliente] [nvarchar](max) NULL,
	[Empleado] [nvarchar](max) NULL,
	[Estado] [nvarchar](max) NULL,
	[Clientes_Dni] [nvarchar](128) NULL,
	[Empleados_Codigo] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Pedidos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 30/04/2019 1:41:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Codigo] [nvarchar](128) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [float] NOT NULL,
	[Importe] [decimal](18, 2) NOT NULL,
	[Proveedor_Dni] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Productos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedors]    Script Date: 30/04/2019 1:41:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedors](
	[Dni] [nvarchar](128) NOT NULL,
	[Ruc] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Telefono] [nvarchar](max) NULL,
	[Rubro] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Estado] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Proveedors] PRIMARY KEY CLUSTERED 
(
	[Dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Boletas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Boletas_dbo.Clientes_Dni] FOREIGN KEY([Dni])
REFERENCES [dbo].[Clientes] ([Dni])
GO
ALTER TABLE [dbo].[Boletas] CHECK CONSTRAINT [FK_dbo.Boletas_dbo.Clientes_Dni]
GO
ALTER TABLE [dbo].[Boletas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Boletas_dbo.Empleados_Codigo] FOREIGN KEY([Codigo])
REFERENCES [dbo].[Empleados] ([Codigo])
GO
ALTER TABLE [dbo].[Boletas] CHECK CONSTRAINT [FK_dbo.Boletas_dbo.Empleados_Codigo]
GO
ALTER TABLE [dbo].[Boletas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Boletas_dbo.Empresas_Ruc] FOREIGN KEY([Ruc])
REFERENCES [dbo].[Empresas] ([Ruc])
GO
ALTER TABLE [dbo].[Boletas] CHECK CONSTRAINT [FK_dbo.Boletas_dbo.Empresas_Ruc]
GO
ALTER TABLE [dbo].[Detalles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Detalles_dbo.Boletas_Boletas_Serie] FOREIGN KEY([Boletas_Serie])
REFERENCES [dbo].[Boletas] ([Serie])
GO
ALTER TABLE [dbo].[Detalles] CHECK CONSTRAINT [FK_dbo.Detalles_dbo.Boletas_Boletas_Serie]
GO
ALTER TABLE [dbo].[Detalles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Detalles_dbo.Productos_Codigo] FOREIGN KEY([Codigo])
REFERENCES [dbo].[Productos] ([Codigo])
GO
ALTER TABLE [dbo].[Detalles] CHECK CONSTRAINT [FK_dbo.Detalles_dbo.Productos_Codigo]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Empleados_dbo.Cargos_Cargo] FOREIGN KEY([Cargo])
REFERENCES [dbo].[Cargos] ([Cargo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_dbo.Empleados_dbo.Cargos_Cargo]
GO
ALTER TABLE [dbo].[Inventarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventarios_dbo.Productos_Productos_Codigo] FOREIGN KEY([Productos_Codigo])
REFERENCES [dbo].[Productos] ([Codigo])
GO
ALTER TABLE [dbo].[Inventarios] CHECK CONSTRAINT [FK_dbo.Inventarios_dbo.Productos_Productos_Codigo]
GO
ALTER TABLE [dbo].[Inventarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventarios_dbo.Proveedors_Proveedor_Dni] FOREIGN KEY([Proveedor_Dni])
REFERENCES [dbo].[Proveedors] ([Dni])
GO
ALTER TABLE [dbo].[Inventarios] CHECK CONSTRAINT [FK_dbo.Inventarios_dbo.Proveedors_Proveedor_Dni]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pedidos_dbo.Clientes_Clientes_Dni] FOREIGN KEY([Clientes_Dni])
REFERENCES [dbo].[Clientes] ([Dni])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_dbo.Pedidos_dbo.Clientes_Clientes_Dni]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pedidos_dbo.Empleados_Empleados_Codigo] FOREIGN KEY([Empleados_Codigo])
REFERENCES [dbo].[Empleados] ([Codigo])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_dbo.Pedidos_dbo.Empleados_Empleados_Codigo]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Productos_dbo.Proveedors_Proveedor_Dni] FOREIGN KEY([Proveedor_Dni])
REFERENCES [dbo].[Proveedors] ([Dni])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_dbo.Productos_dbo.Proveedors_Proveedor_Dni]
GO
