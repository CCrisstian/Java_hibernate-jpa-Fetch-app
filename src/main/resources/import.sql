INSERT INTO clientes (id, nombre, apellido, forma_pago, creado_en, editado_en) VALUES (1,'Cristian','Cristaldo','debito',NULL,NULL), (2,'Andres','Guzman','debito',NULL,NULL), (3,'John','Doe','credito',NULL,NULL), (5,'Pepa','Doe','credito',NULL,NULL), (6,'Nilson','Orrego','paypal',NULL,NULL), (7,'Luna','Garcia','debito',NULL,NULL), (10,'John','Roe','paypal',NULL,NULL), (11,'Lou','Loe','paypal',NULL,NULL), (12,'Lalo','Mena','webpay','2024-10-21 15:42:01','2024-10-21 15:43:24'), (13,'Pia','Perez','paypal plus','2024-10-21 15:57:42','2024-10-21 15:59:02');

INSERT INTO alumnos (id, nombre, apellido) VALUES(1, 'Johana','Doe');
INSERT INTO alumnos (id, nombre, apellido) VALUES(2, 'Pepe','Gon');
INSERT INTO cursos (id, titulo, profesor) VALUES(1, 'Curso Spring','Andres');
INSERT INTO cursos (id, titulo, profesor) VALUES(2, 'Curso Java EE 9','Andres');

INSERT INTO direcciones(calle, numero) VALUES('vaticano',123);
INSERT INTO direcciones(calle, numero) VALUES('colon',456);

INSERT INTO tbl_clientes_direcciones(id_cliente, id_direccion) VALUES(1, 1);
INSERT INTO tbl_clientes_direcciones(id_cliente, id_direccion) VALUES(1, 2);

INSERT INTO clientes_detalles(prime, puntos_acumulados, cliente_detalle_id) VALUES(1, 8000, 1);

INSERT INTO tbl_alumnos_cursos(alumno_id, curso_id) VALUES(1,1);
INSERT INTO tbl_alumnos_cursos(alumno_id, curso_id) VALUES(1,2);

INSERT INTO facturas(descripcion, total, id_cliente) VALUES('oficina', 4000, 1);
INSERT INTO facturas(descripcion, total, id_cliente) VALUES('casa', 2000, 1);
INSERT INTO facturas(descripcion, total, id_cliente) VALUES('deporte', 3000, 1);
INSERT INTO facturas(descripcion, total, id_cliente) VALUES('computación', 7000, 2);