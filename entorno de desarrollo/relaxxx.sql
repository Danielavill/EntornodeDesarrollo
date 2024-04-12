CREATE TABLE usuarios(
	id_usuarios serial primary key,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar (50) not null,
	contraseña int  not null
	);
	
	create table publicaciones(
		id_publicaciones serial primary key,
		contenido text not null,
		fecha_publicacion date not null,
		otros_campos text not null,
		usuarios_id int not null,
		foreign key (usuarios_id) references usuarios (id_usuarios)
		);
		
     create table comentarios(
		 id_comentarios serial primary key,
		 contenido text not null,
		 fecha_comentario date not null,
		 usuarios_id int not null,
		 publicaciones_id int not null,
		 foreign key (usuarios_id) references usuarios (id_usuarios),
		 foreign key (publicaciones_id) references publicaciones (id_publicaciones)
		 );
		 
		 create table likes(
		 id_likes serial primary key,
		 fecha_like date not null,
		publicaciones_id int not null,
		 usuarios_id int not null,
	      foreign key (usuarios_id) references usuarios (id_usuarios),
		  foreign key (publicaciones_id) references publicaciones (id_publicaciones)
			 )
			 
		 create table seguidores(
		id_seguidores serial primary key,
		 fecha_seguimiento date not null,
		 usuarios_id int not null,
		 foreign key (usuarios_id) references usuarios (id_usuarios)
		);
		
	insert into usuarios(nombre,apellido,email,contraseña ) values ('johany','cruz','johany@gmail.com','123456789');
	select*from usuarios;
	
	update "usuarios"
	set
	nombre='andres',
	apellido='rojas' 
	where nombre='johany';
	
	
	create table tareas(
		id_tareas serial primary key,
		titulo varchar(20) not null,
		descripcion text not null,
		fecha_limite date not null,
		completada boolean not null
		)
		insert into tareas (titulo,descripcion,fecha_limite,completada)values('ing.sistemas','desarrollador de sistemas','2024-05-15','true');
		select*from tareas;
		insert into tareas (titulo,descripcion,fecha_limite,completada)values('arquitecto','diseñador','2022-06-16','false');
		
     update tareas
	set
	titulo='modelo'
	descripcion='graficos'
	fecha_limite='2023-07-12'
	completada='true'
	where titulo= 'arquitecto';
		