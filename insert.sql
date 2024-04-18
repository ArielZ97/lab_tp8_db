INSERT INTO cliente (dni, nombre, apellido, direccion, contactoAlternativo, activo, telefono) 
VALUES 
('12345678', 'Juan', 'Pérez', 'Calle 123', 987654321, 1, 11223344),
('23456789', 'María', 'Gómez', 'Avenida 456', 987654322, 1, 22334455),
('34567890', 'Carlos', 'López', 'Plaza 789', 987654323, 1, 33445566),
('45678901', 'Laura', 'Martínez', 'Calle 456', 987654324, 1, 44556677),
('56789012', 'Pedro', 'Sánchez', 'Avenida 789', 987654325, 1, 55667788);

-- Insertar datos en la tabla mascotas
INSERT INTO mascotas (cliente_idcliente, alias, sexo, especie, mascotascol, calorPelo, fechaNac, activo)
VALUES 
(1, 'Luna', 'Hembra', 'Perro', 'Colmillo', 'Largo', '2019-05-20', 1),
(2, 'Max', 'Macho', 'Gato', 'Garra', 'Corto', '2020-07-10', 1),
(3, 'Bobby', 'Macho', 'Perro', 'Diente', 'Medio', '2018-03-15', 1),
(4, 'Lola', 'Hembra', 'Gato', 'Uña', 'Largo', '2021-01-05', 1),
(5, 'Rocky', 'Macho', 'Perro', 'Pata', 'Corto', '2022-09-30', 1);

-- Insertar datos en la tabla tratamiento
INSERT INTO tratamiento (idTratamiento, descripcion, medicamento, importe, tipoTratamiento, activo)
VALUES 
(1, 'Desparasitación', 'Vermox', 50.00, 'Oral', 1),
(2, 'Vacuna', 'Rabia', 80.00, 'Inyectable', 1),
(3, 'Cirugía', 'Esterilización', 300.00, 'Cirugía', 1),
(4, 'Control', 'Diagnóstico', 100.00, 'General', 1),
(5, 'Vacuna', 'Parvovirus', 90.00, 'Inyectable', 1);

-- Insertar datos en la tabla visita
INSERT INTO visita (mascotas_idmascotas, tratamiento_idTratamiento, fechaVisita, detalle, peso, activo)
VALUES 
(1, 1, '2023-04-15', 'Control de salud anual', 12.5, 1),
(2, 2, '2023-05-20', 'Vacunación anual', 4.2, 1),
(3, 3, '2023-06-10', 'Esterilización', 8.0, 1),
(4, 4, '2023-07-05', 'Control de salud postoperatorio', 5.7, 1),
(5, 5, '2023-08-12', 'Vacunación contra parvovirus', 15.0, 1);