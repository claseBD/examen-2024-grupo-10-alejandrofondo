CREATE TABLE IF NOT EXISTS `formaciones` (
  `id` decimal(2,0) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `definicion` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `definicion` (`definicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `formaciones` (`id`, `nombre`, `definicion`, `empresario`) VALUES
(1, 'Ingles', 'ING_001', 'Fernando'),
(2, 'Matematicas', 'MAT_002', 'Mateo'),
(3, 'Biologia', 'BIO_003', 'Alicia')
(4, 'Fisica', 'FIS_004', 'Laura'),
(5, 'Quimica', 'QUI_005', 'Pedro'),
(6, 'Historia', 'HIS_006', 'Marta'),
(7, 'Geografia', 'GEO_007', 'Javier'),
(8, 'Programacion', 'PRO_008', 'Sofia'),
(9, 'Arte', 'ART_009', 'Claudia'),
(10, 'Filosofia', 'FIL_010', 'Andres');


DELIMITER $$

CREATE TRIGGER `before_insert_or_update_formaciones`
BEFORE INSERT ON `formaciones`
FOR EACH ROW
BEGIN
  SET NEW.definicion = UPPER(NEW.definicion);
END$$

DELIMITER ;
