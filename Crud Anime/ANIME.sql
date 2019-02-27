-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-02-2019 a las 11:34:02
-- Versión del servidor: 5.7.25-0ubuntu0.16.04.2
-- Versión de PHP: 7.0.33-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ANIME`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ANIME`
--

CREATE TABLE `ANIME` (
  `CodAni` int(11) NOT NULL,
  `NomAni` varchar(100) NOT NULL,
  `SinAni` varchar(5000) NOT NULL,
  `GenAni` varchar(100) NOT NULL,
  `NumEpiAni` int(11) NOT NULL,
  `DurEpiAni` int(11) NOT NULL,
  `FecEstAni` date NOT NULL,
  `EstAni` varchar(50) NOT NULL,
  `CodTip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ANIME`
--

INSERT INTO `ANIME` (`CodAni`, `NomAni`, `SinAni`, `GenAni`, `NumEpiAni`, `DurEpiAni`, `FecEstAni`, `EstAni`, `CodTip`) VALUES
(1, 'Clannad', 'CLANNAD es un anime que se enfoca en la vida de Okazuki Tomoya, un chico de instituto que cursa el último año; algo decepcionado con su propia vida, no tiene las mismas preocupaciones que los demás chicos de su edad. Un día camino al instituto se encuentra con Furukawa Nagisa, una chica algo exótica que tiene como costumbre hablar con si misma. Estos dos personajes se hacen amigos y desencadenan hechos extraordinarios.', 'Comedia, Drama, Romance, Escolares, Recuentos de la vida, Sobrenatural', 24, 24, '2007-08-05', 'Kyoto Animations', 1),
(2, 'Clannad: After Story', 'Segunda Temporada de Clannad', 'Comedia, Drama, Romance, Recuentos de la vida, Sobrenatural', 24, 24, '2008-08-03', 'Kyoto Animations', 1),
(3, 'Tengen Toppa Gurren Lagann', 'La humanidad es obligada a vivir bajo la superficie pasando asi muchos siglos, llegando a olvidarse y convirtiendo en una leyenda la vida en la superficie. Asi se crean pequeñas colonias excavando por distintos lugares y tratando de escapar de los terribles terremotos. En una de esas colonias vive Simon, uno de los mejores excavadores, que en unos de los agujeros encuentra una extraña llave en forma de torno. Si bien todos se mofan de Simon por ser muy raro y de poca autoestima, el único que lo respalda siempre es Kamina quien lo invita a ir hacia la superficie. Por supuesto el Jefe de la colonia prohibe esta acción que se supone que es tabú para la gente y encierra a Kamina. En una excavación nocturna, Simon encuentra esta vez un mecha en forma de cara y corre hacia Kamina para mostrárselo, pero de repente un enorme robot con forma de cara cae desde la superficie y al igual una misteriosa chica que lo ataca con su rifle. Simon, Kamina y la chica (Yoko) tratan de escapar y Simon los conduce a su descubrimiento, ahi le dice a Kamina que lo maneje para derrotar al robot sin embargo, Kamina le responde que esa mecha le pertenece y por lo tanto él debería manejarlo... entre idas y vueltas los 3 entran en la cabeza y ante un impulso de Kamina junto con la ayuda de Yoko, Simon logra de algún modo derrotar a la enorme cara; no solo eso sino que son explusado hacia la superficie...Alli Simon y Kamina descubre un maraviloso mundo para ellos pero también se encuentra con la sorpresa de que en la superficie un grupo de Ganmen (Mechas con forma de cara) que atacan a los humanos que suben a la superficie', 'Accion, Aventura, Comedia, Mecha, Ciencia Ficción', 27, 24, '2007-04-01', 'Gainax', 1),
(4, 'No Game No Life', 'La historia está protagonizada por Sora y Shiro, hermano y hermana, que son muy famosos en todo Internet como NEETs y hikikomoris que se pasan el día jugando a videojuegos, tanto que son una leyenda. Los dos consideran el mundo real como “un juego malo”. Un día, un chico llamado “Dios” les invoca a otro mundo. Allí, Dios ha prohibido las guerras y declara que en el mundo todo se decidirá mediante juegos, incluso cuáles serán las fronteras entre países. La humanidad se ha visto reducida a una sola ciudad debido a que el resto de razas le han ido quitando todo el territorio. Shiro y Sora tendrán que ser los salvadores de la humanidad en este mundo alternativo.', 'Juegos, Aventura, Comedia, Sobrenatural, Ecchi, Fantasia', 12, 24, '2014-04-09', 'Madhouse', 1),
(5, 'No Game No Life: Zero', 'No Game No Life narra las aventuras de Sora y Shiro, unos “hermanos” bastante peculiares, quienes se sumergen en un mundo llamado Disboard y que está plagado de referencias a videojuegos y juegos en general. Pero No Game No Life: Zero nos contará eventos previos a nuestros protagonistas, los cuales fueron “borrados” de la memoria colectiva, interpretando así a personajes que vivieron en Disboard hace seis mil años.', 'Juegos, Sobrenatural, Drama, Romance, Fantasia', 1, 106, '2017-07-15', 'Madhouse', 5),
(6, 'Koe no Katachi', 'La historia gira en torno a Shoko Nishimiya, una estudiante de primaria que es sorda de nacimiento y que al cambiarse de colegio comienza a recibir acoso escolar por parte de sus nuevos compañeros. Uno de los principales responsables es Ishida Shouya quien termina por forzar que Nishimiya se cambie de escuela. Como resultado de los actos contra Shoko las autoridades del colegio toman cartas en el asunto y el curso señala como único responsable a Ishida, quien comienza a sentir el acoso impuesto por sus propios compañeros, al mismo tiempo que termina aislándose de los que alguna vez fueron sus amigos. Años después, Ishida intenta corregir su mal actuar, buscando la redención frente a Nishimiya.', 'Drama, Escolares, Shounen', 1, 130, '2016-09-17', 'Kyoto Animations', 5),
(7, 'Shelter', 'Desconocido', 'Musica, Ciencia Ficcion', 1, 6, '2016-10-18', 'A1-Pictures', 1),
(8, 'Death March kara Hajimaru Isekai Kyousoukyoku', 'Ichiro Suzuki, conocido como "Satou", es un programador en plena marcha fúnebre. Cuando un día se despierta después de lo que supuestamente iba a ser una siesta normal, se encuentra en otro mundo... Lo que ve ante él parece la pantalla del menú del juego en el que estaba trabajando antes de dormirse, y es un novato de nivel 1. Por suerte tiene acceso a la nueva función de "mostrar todo el mapa" que acababa de implementar para ayudar a los novatos y tres usos de la magia "Lluvia de meteoritos", la cual puede acabar con todos los enemigos de un mapa completo.', 'Aventura, Fantasia, Harem', 12, 24, '2018-01-11', 'Funimation', 1),
(9, 'Goblin Slayer', 'Una joven sacerdotisa ha formado su primer grupo de aventureros, pero no tardan mucho en verse en serios problemas. Por suerte, quien aparece en su rescate es el Asesino de Goblins, un hombre que ha dedicado su vida a exterminar a todo goblin viviente por los medios que fueran necesarios. Cuando comienzan a circular rumores sobre sus hazañas, no hay forma de saber quién será el próximo en aparecer.', 'Accion, Aventura, Fantasia', 12, 24, '2018-10-07', 'White Fox', 1),
(10, 'Ano natsu de matteru', 'El anime será una comedia romántica de adolescentes protagonizada por las chicas Ichika Takatsuki y Remon Yamano, y por un chico llamado Kaito Kirishima.', 'Comedia, Drama, Romance, Ciencia Ficcion, Recuentos de la Vida', 12, 24, '2012-01-10', 'J.C.Staff', 1),
(11, 'Ano Natsu de Matteru: Bokutachi wa Koukou Saigo no Natsu wo Sugoshinagara, Ano Natsu de Matteiru.', 'Episodio especial de \'Ano Natsu de Matteru\'', 'Comedia, Drama, Romance, Ciencia Ficcion, Recuentos de la Vida', 1, 26, '2014-08-29', 'J.C.Staff', 4),
(12, 'Momokuri', '"Quiero saberlo todo sobre la persona a la que amo". Yuki Kurihara es una estudiante de segundo de preparatoria que se enamora de Shinya Momotsuki, un año menor que ella. Tras tomar cientos de fotografías a escondidas de él desde la distancia, decide decirle que está enamorada de él. El chico le responde con un "sí" y ambos comienzan a salir, aunque ella sigue tomando fotografías de todo y comportándose de forma un tanto extraña... Una relajante comedia romántica entre dos personas que no saben cómo demostrar sus sentimientos.', 'Comedia, Romance, Recuentos de la vida', 26, 12, '2015-12-24', 'Satelight', 3),
(13, 'Himouto! Umaru-chan', 'La historia sigue la vida de Taihei y su hermana menor Umaru, quien es bastante bella y le va bien tanto en el apartado académico como en los deportes. Pero este aparente perfecto personaje tiene un secreto.', 'Comedia, Escolares, Seinen, Recuentos de la Vida', 12, 24, '2015-07-09', 'Doga Kobo', 1),
(14, 'Himouto! Umaru-chan R', 'Segunda temporada de \'Himouto! Umaru-chan\'', 'Comedia, Escolares, Seinen, Recuentos de la Vida', 12, 24, '2017-10-08', 'Doga Kobo', 1),
(15, 'Himouto! Umaru-chan OVA', 'Episodios de \'Himouto! Umaru-chan\' incluidos en los volúmenes 7 y 10 del manga.', 'Comedia, Escolares, Seinen, Recuentos de la Vida', 2, 24, '2015-10-19', 'Doga Kobo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TIPO`
--

CREATE TABLE `TIPO` (
  `CodTip` int(11) NOT NULL,
  `NomTip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `TIPO`
--

INSERT INTO `TIPO` (`CodTip`, `NomTip`) VALUES
(1, 'Serie'),
(2, 'OVA'),
(3, 'ONA'),
(4, 'Especial'),
(5, 'Pelicula');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ANIME`
--
ALTER TABLE `ANIME`
  ADD PRIMARY KEY (`CodAni`),
  ADD KEY `CodTip` (`CodTip`);

--
-- Indices de la tabla `TIPO`
--
ALTER TABLE `TIPO`
  ADD PRIMARY KEY (`CodTip`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ANIME`
--
ALTER TABLE `ANIME`
  MODIFY `CodAni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `TIPO`
--
ALTER TABLE `TIPO`
  MODIFY `CodTip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ANIME`
--
ALTER TABLE `ANIME`
  ADD CONSTRAINT `ANIME_ibfk_1` FOREIGN KEY (`CodTip`) REFERENCES `TIPO` (`CodTip`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
