-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Out-2020 às 01:26
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `CodCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`CodCategoria`, `categoria`) VALUES
(1, 'esporte'),
(2, 'entretenimento'),
(3, 'politica'),
(4, 'saude'),
(5, 'educação'),
(6, 'infraestrutura'),
(7, 'noticia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `noticia` text,
  `titulo` varchar(255) DEFAULT NULL,
  `codredator` int(11) DEFAULT NULL,
  `CodCategoria` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `noticia`, `titulo`, `codredator`, `CodCategoria`, `ano`, `mes`, `dia`) VALUES
(1, 'Uma pesquisa inédita sobre a expansão de organizações criminosas no Rio revela que milícia e tráfico estão presentes em 96 dos 163 bairros da cidade, onde vivem cerca de 3,76 milhões de pessoas.\r\n\r\nO estudo, batizado de Mapa dos Grupos Armados do Rio de Janeiro, identificou que milicianos controlam área maior do que traficantes de drogas na capital fluminense. Segundo o levantamento, até o fim de 2019, as milícias dominavam 25,5% dos bairros do Rio. O percentual representa 57,5% da superfície territorial da cidade, onde vivem 33,1% dos habitantes do município – ou seja, mais de 2 milhões dos cerca de 6,74 milhões habitantes calculados pelo Instituto Brasileiro de Geografia e Estatística (IBGE). Um levantamento feito pelo G1 em 2018 com um método diferente do usado pelo Mapa dos Grupos Armados também apontava que havia ao menos 2 milhões de pessoas vivendo em áreas dominadas pela milícia.As facções do tráfico estão presentes em mais bairros da capital: 55, contra 41 das quadrilhas de milicianos, mas com uma população menor – há cerca de 1,5 milhão de habitantes nas áreas dominadas pelos traficantes.', 'Rio tem 3,7 milhões de habitantes em áreas dominadas pelo crime organizado; milícia controla 57% da área da cidade, diz estudo', 3, 7, 2020, 9, 15),
(2, 'Uma pesquisa inédita sobre a expansão de organizações criminosas no Rio revela que milícia e tráfico estão presentes em 96 dos 163 bairros da cidade, onde vivem cerca de 3,76 milhões de pessoas.\r\n\r\nO estudo, batizado de Mapa dos Grupos Armados do Rio de Janeiro, identificou que milicianos controlam área maior do que traficantes de drogas na capital fluminense. Segundo o levantamento, até o fim de 2019, as milícias dominavam 25,5% dos bairros do Rio. O percentual representa 57,5% da superfície territorial da cidade, onde vivem 33,1% dos habitantes do município – ou seja, mais de 2 milhões dos cerca de 6,74 milhões habitantes calculados pelo Instituto Brasileiro de Geografia e Estatística (IBGE). Um levantamento feito pelo G1 em 2018 com um método diferente do usado pelo Mapa dos Grupos Armados também apontava que havia ao menos 2 milhões de pessoas vivendo em áreas dominadas pela milícia.As facções do tráfico estão presentes em mais bairros da capital: 55, contra 41 das quadrilhas de milicianos, mas com uma população menor – há cerca de 1,5 milhão de habitantes nas áreas dominadas pelos traficantes.', 'Rio tem 3,7 milhões de habitantes em áreas dominadas pelo crime organizado; milícia controla 57% da área da cidade, diz estudo', 3, 7, 2020, 9, 15),
(3, 'O programa \"Mais Você\", apresentado por Ana Maria Braga e por Louro José, comemorou hoje 21 anos de existência na Rede Globo. Na abertura, Ana Maria reprisou momentos do bordão \"acorda menina\" ao longo de toso esses anos e, de quebra, a produção colocou \"Parabéns da Xuxa\", canção da rainha dos baixinhos que está na Record. \"Estamos de aniversário. Fizemos 21 anos ontem e deixamos para assoprar as velinhas hoje e principalmente com vocês, mesmo que a distância\", afirmou Ana Maria. A apresentadora ainda recebeu flores como parte da comemoração. Ana Maria começou a carreira de apresentadora na TV Record, onde Xuxa está hoje. Em 1999, após desentendimentos com a direção da emissora da Barra Funda, Ana chegou aos estúdios da Globo.', 'Mais Você faz 21 anos na Globo e comemora com música da Xuxa\',\'O programa \"Mais Você\"', 3, 2, 2020, 11, 8),
(4, 'O programa \"Mais Você\", apresentado por Ana Maria Braga e por Louro José, comemorou hoje 21 anos de existência na Rede Globo. Na abertura, Ana Maria reprisou momentos do bordão \"acorda menina\" ao longo de toso esses anos e, de quebra, a produção colocou \"Parabéns da Xuxa\", canção da rainha dos baixinhos que está na Record. \"Estamos de aniversário. Fizemos 21 anos ontem e deixamos para assoprar as velinhas hoje e principalmente com vocês, mesmo que a distância\", afirmou Ana Maria. A apresentadora ainda recebeu flores como parte da comemoração. Ana Maria começou a carreira de apresentadora na TV Record, onde Xuxa está hoje. Em 1999, após desentendimentos com a direção da emissora da Barra Funda, Ana chegou aos estúdios da Globo.', 'Mais Você faz 21 anos na Globo e comemora com música da Xuxa\',\'O programa \"Mais Você\"', 3, 2, 2020, 11, 8),
(5, 'O West Ham conseguiu um resultado que parecia improvável hoje 18. Pela 5ª rodada do Campeonato Inglês, fora de casa, o time buscou no último minuto de partida um empate em 3 a 3 com o Tottenham, depois de estar perdendo por 3 a 0 até os 36 minutos do segundo tempo. Com um início avassalador, os Spurs marcaram os três gols no começo do primeiro tempo. O primeiro veio pelos pés de Son, aos 45 segundos de jogo, com assistência de Harry Kane. O artilheiro inglês foi o responsável pelos outros dois tentos, um aos 8 e outro aos 16 minutos.\',\'3\',\'1\',\'18\',\'10\',\'2020\')\r\n(\'Dia D para multivacinação vacina milhares de crianças e adolescentes em todo o país\',\'O Dia “D” de mobilização nacional, no sábado 17, serviu para conscientizar e imunizar milhares de crianças e adolescentes menores de 15 anos em todo país. A campanha de multivacinação e também de vacinação contra a poliomielite, promovida pelo Ministério da Saúde, segue até 30 de outubro com o conceito Movimento Vacina Brasil. É mais proteção para todos. Iniciada no dia 5 de outubro em mais de 40 mil postos de vacinação espalhados pelo Brasil, a campanha segue com o objetivo de atualizar a caderneta de vacinação e mobilizar a população para a importância de vacinar os brasileirinhos contra diversas doenças como sarampo, febre amarela, rubéola, caxumba, hepatites A e B, dentre outras.', 'West Ham faz 3 gols nos 15 minutos finais e arranca empate contra Tottenham', 1, 1, 2020, 7, 10),
(6, 'O West Ham conseguiu um resultado que parecia improvável hoje 18. Pela 5ª rodada do Campeonato Inglês, fora de casa, o time buscou no último minuto de partida um empate em 3 a 3 com o Tottenham, depois de estar perdendo por 3 a 0 até os 36 minutos do segundo tempo. Com um início avassalador, os Spurs marcaram os três gols no começo do primeiro tempo. O primeiro veio pelos pés de Son, aos 45 segundos de jogo, com assistência de Harry Kane. O artilheiro inglês foi o responsável pelos outros dois tentos, um aos 8 e outro aos 16 minutos.\',\'3\',\'1\',\'18\',\'10\',\'2020\')\r\n(\'Dia D para multivacinação vacina milhares de crianças e adolescentes em todo o país\',\'O Dia “D” de mobilização nacional, no sábado 17, serviu para conscientizar e imunizar milhares de crianças e adolescentes menores de 15 anos em todo país. A campanha de multivacinação e também de vacinação contra a poliomielite, promovida pelo Ministério da Saúde, segue até 30 de outubro com o conceito Movimento Vacina Brasil. É mais proteção para todos. Iniciada no dia 5 de outubro em mais de 40 mil postos de vacinação espalhados pelo Brasil, a campanha segue com o objetivo de atualizar a caderneta de vacinação e mobilizar a população para a importância de vacinar os brasileirinhos contra diversas doenças como sarampo, febre amarela, rubéola, caxumba, hepatites A e B, dentre outras.', 'West Ham faz 3 gols nos 15 minutos finais e arranca empate contra Tottenham', 1, 1, 2020, 7, 10),
(7, 'Nas últimas três semanas, o Brasil tem apresentado redução nos óbitos pela Covid-19. A tendência de queda se estende também para os registros de casos da doença, quando comparada a semana de 4 a 10 de outubro com a semana anterior, de 27/9 a 3/10. Conforme dados do Boletim Epidemiológico do Ministério da Saúde, apresentados em coletiva de imprensa virtual nesta quinta-feira (15), o país apresentou redução de 8% nos registros de óbitos em relação à semana anterior e 6,9% nos registros de casos da doença.', 'Brasil mantém queda nos registros de óbitos pela Covid-19', 5, 4, 2020, 4, 26),
(8, 'Nas últimas três semanas, o Brasil tem apresentado redução nos óbitos pela Covid-19. A tendência de queda se estende também para os registros de casos da doença, quando comparada a semana de 4 a 10 de outubro com a semana anterior, de 27/9 a 3/10. Conforme dados do Boletim Epidemiológico do Ministério da Saúde, apresentados em coletiva de imprensa virtual nesta quinta-feira (15), o país apresentou redução de 8% nos registros de óbitos em relação à semana anterior e 6,9% nos registros de casos da doença.', 'Brasil mantém queda nos registros de óbitos pela Covid-19', 5, 4, 2020, 4, 26),
(9, 'Além de obrigar o fechamento das escolas e exigir que o ensino e aprendizagem aconteça a distância, a pandemia do novo coronavírus COVID-19 aumentou os desafios para a implementação dos novos currículos do ensino médio pelas redes estaduais de educação. As equipes seguem na preparação dos documentos, mas as próximas fases, como consultas públicas, homologação, formação de professores e implementação, podem atrasar.', 'Pandemia aumenta desafios para implementação de novos currículos do ensino médio', 2, 5, 2020, 3, 6),
(10, 'Além de obrigar o fechamento das escolas e exigir que o ensino e aprendizagem aconteça a distância, a pandemia do novo coronavírus COVID-19 aumentou os desafios para a implementação dos novos currículos do ensino médio pelas redes estaduais de educação. As equipes seguem na preparação dos documentos, mas as próximas fases, como consultas públicas, homologação, formação de professores e implementação, podem atrasar.', 'Pandemia aumenta desafios para implementação de novos currículos do ensino médio', 2, 5, 2020, 3, 6),
(11, 'Fazia um calor intenso na manhã de 26 de agosto, uma quarta-feira, quando o presidente Jair Bolsonaro sem partido e outros figurões do governo surgiram na cerimônia de retomada das atividades do alto-forno 1 na usina de Ipatinga da Usiminas, em solo mineiro.', 'A nova era do aço: exportações devem impulsionar siderurgia em 2021', 4, 6, 2020, 7, 11),
(12, 'Fazia um calor intenso na manhã de 26 de agosto, uma quarta-feira, quando o presidente Jair Bolsonaro sem partido e outros figurões do governo surgiram na cerimônia de retomada das atividades do alto-forno 1 na usina de Ipatinga da Usiminas, em solo mineiro.', 'A nova era do aço: exportações devem impulsionar siderurgia em 2021', 4, 6, 2020, 7, 11),
(13, 'Os analistas do mercado financeiro elevaram pela décima semana seguida sua estimativa de inflação para este ano e também estimaram tombo menor do Produto Interno Bruto (PIB) em 2020. As expectativas fazem parte do boletim de mercado, conhecido como relatório Focus, divulgado nesta terça-feira 19 pelo Banco Central BC. Os dados foram levantados na semana passada em pesquisa com mais de 100 instituições financeiras. Segundo o relatório, os analistas dos bancos subiram a estimativa de inflação deste ano de 2,47% para 2,65%. Em setembro, a inflação oficial do país avançou 0,64% e foi puxada pela alta nos preços de alimentos e da gasolina. Foi a maior alta para um mês de setembro desde 2003 – quando atingiu 0,78% – e a maior taxa do ano.', 'Mercado financeiro sobe para 2,65% estimativa de inflação em 2020 e vê tombo menor do PIB', 2, 3, 2020, 4, 19),
(14, 'Os analistas do mercado financeiro elevaram pela décima semana seguida sua estimativa de inflação para este ano e também estimaram tombo menor do Produto Interno Bruto (PIB) em 2020. As expectativas fazem parte do boletim de mercado, conhecido como relatório Focus, divulgado nesta terça-feira 19 pelo Banco Central BC. Os dados foram levantados na semana passada em pesquisa com mais de 100 instituições financeiras. Segundo o relatório, os analistas dos bancos subiram a estimativa de inflação deste ano de 2,47% para 2,65%. Em setembro, a inflação oficial do país avançou 0,64% e foi puxada pela alta nos preços de alimentos e da gasolina. Foi a maior alta para um mês de setembro desde 2003 – quando atingiu 0,78% – e a maior taxa do ano.', 'Mercado financeiro sobe para 2,65% estimativa de inflação em 2020 e vê tombo menor do PIB', 2, 3, 2020, 4, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codredator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codredator`, `nome`, `sobrenome`, `email`, `ddd`, `cidade`, `telefone`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Luisa', 'Pontes', 'lulu@gmail.com', 11, 'Ribeirão Pires', '21345-6543', 10, 25, 5, 1995),
(2, 'Pedro', 'Chagas', 'pedro@gmail.com', 11, 'Maua', '86754-1567', 3, 9, 12, 2005),
(3, 'Larissa', 'Macedo', 'lari@gmail.com', 11, 'Suzano', '09789-3425', 8, 1, 8, 2003),
(4, 'Fernando', 'Miguel', 'fer@gmail.com', 11, 'Maua', '87509-42367', 9, 7, 9, 2003),
(5, 'Rafaela', 'Silva', 'rafaela@gmail.com', 11, 'Ribeirão Pires', '86742-1856', 1, 30, 3, 2005);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1A'),
(2, '1B'),
(3, '1C'),
(4, '2A'),
(5, '2B'),
(6, '2C'),
(7, '3A'),
(8, '3B'),
(9, '3C'),
(10, '3D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodCategoria`);

--
-- Indexes for table `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Indexes for table `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codredator` (`codredator`),
  ADD KEY `CodCategoria` (`CodCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Indexes for table `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codredator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `CodCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `redator`
--
ALTER TABLE `redator`
  MODIFY `codredator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codredator`) REFERENCES `redator` (`codredator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`CodCategoria`) REFERENCES `categoria` (`CodCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
