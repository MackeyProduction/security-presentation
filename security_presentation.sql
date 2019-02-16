-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Erstellungszeit: 16. Feb 2019 um 22:18
-- Server-Version: 5.5.62
-- PHP-Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `security_presentation`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `cId` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(200) NOT NULL,
  `street` varchar(100) NOT NULL,
  `plz` char(5) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`cId`, `firstname`, `lastname`, `email`, `street`, `plz`, `location`) VALUES
(1, 'Toni', 'Dolfen', 'toni.dolfen@aol.de', 'Augustinerallee 2', '50181', 'Bedburg'),
(2, 'Thomas', 'Adels', 'mail@adels-it.de', 'Neusser Str. 520', '50737', 'Köln'),
(3, 'Uli', 'Berg', 'Uli.Berg@web.de', 'Franz-Brandt Str. 503', '50181', 'Bedburg'),
(4, 'Mattias', 'Jung', 'Mattias0@gmail.com', 'Militärring 50', '50737', 'Köln'),
(5, 'Maximilian', 'Muster', 'MaximilianMuster@aol.de', 'Musterstrasse 999', '50189', 'Elsdorf'),
(6, 'Markus', 'Krämer', 'info@nicom-edv.de', 'Köln-Aachener-Str. 132', '50189', 'Elsdorf'),
(7, 'Carsten', 'Meyer', 'info@csmeyer.de', 'Eichendorffstr. 42', '41464', 'Neuss'),
(8, 'Frank', 'Holzweg', 'HolzwegFrank@frankus.eu', 'Holzweg 7', '41564', 'Kaarst'),
(9, 'Fritz', 'Müller', 'FritzFritz@aol.de', 'Furt Straße 123', '41464', 'Neuss'),
(10, 'Thorsten', 'Clemens', 'mail@dmdata.de', 'Weissdornweg 2', '41564', 'Kaarst');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product`
--

CREATE TABLE `product` (
  `pId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `productNr` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `pdId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `product`
--

INSERT INTO `product` (`pId`, `name`, `description`, `price`, `productNr`, `available`, `image`, `pdId`) VALUES
(1, '4GB G.Skill NT Series DDR3-1333 DIMM CL9 Single', 'Das Modul mit 6-Layer-PCB ist mit silbernen Kühlkörpern ausgestattet und auf Latenzen von 9-9-9-24 bei 1333 MHz programmiert. Das 4GB-DDR3-1333-Speichermodul (PC3-10600) ist aus der NT-Serie von G.Skill.', '19,81', 8365059, 20, 'ram_1.png', 12),
(2, '8GB G.Skill Value DDR3-1600 DIMM CL11 Single', '8GB G.Skill Arbeitsspeicher in DIMM Bauform.', '37,01', 8451563, 5, 'ram_2.png', 12),
(3, 'Asus Prime X470-Pro AMD X470 So.AM4 Dual Channel DDR4 ATX Retail', 'ASUS Prime X470-Pro\r\nAMD AM4 ATX-Mainboard mit M.2-Kühler, DDR4 3466MHz, dualem M.2, HDMI, SATA mit 6Gbit/s und USB 3.1 Gen 2 Front-Panel-Anschluss\r\n\r\n    ASUS 5-Fach-Optimierung: Systemweites Tuning per Mausklick für optimierte Übertaktungen und eine intelligente Kühlung für CPU- oder GPU-intensive Aufgaben\r\n    Branchenführende Kühloptionen: Umfassende Steuerung für Lüfter und Wasserpumpen über die Fan-Xpert-4-Software oder das beliebte ASUS UEFI\r\n    M.2-Kühlkörper: Das ultra-effiziente Design reduziert die Temperatur der M.2-SSD um bis zu 20°C und sorgt für eine ungedrosselte Übertragungsgeschwindigkeit sowie verbesserte Zuverlässigkeit\r\n    Next-Gen-Konnektivität: Überragende Flexibilität mit dualer M.2-Unterstützung, NVME-RAID-Unterstützung, USB-3.1-Gen-2-Schnittstellen und Front-Panel-Anschluss\r\n    ASUS Aura Sync: Branchenweit führendes RGB-Ökosystem mit steuerbaren Onboard-LEDs und einer riesigen Auswahl an Aura-Sync-kompatiblen Komponenten\r\n\r\n', '163,92', 71357, 10, 'mainboard_1.png', 7),
(4, 'Corsair SPEC-Omega mit Sichtfenster Midi Tower ohne Netzteil schwarz', 'Das SPEC-OMEGA der Carbide Series ist ein Mid-Tower-PC-Gehäuse mit einem markanten Look, Front- und Seitenplatten aus einzigartigem gehärtetem Glas sowie einem Direct Airflow Path-Kühllayout. Er ist das ultimative Gerätemodell.\r\n\r\nDAS ULTIMATIVE MODELL\r\nDas SPEC-OMEGA der Carbide Series ist ein Mid-Tower-PC-Gehäuse mit einem markanten Look, Front- und Seitenplatten aus einzigartigem gehärtetem Glas sowie einem Direct Airflow Path-Kühllayout. Er ist das ultimative Gerätemodell.\r\n\r\nUNVERWECHSELBARER STIL\r\nDas einzigartige asymmetrische und kantige Design gibt dem SPEC-OMEGA einen modernen und dynamischen Look - ein System, das die Blicke auf sich zieht.\r\n\r\nGEHÄRTETES GLAS GIBT DEN BLICK AUF DIE HARDWARE FREI\r\nWarum Ihr System verstecken? Mit den Seiten- und Frontplatten aus gehärtetem Glas präsentieren Sie Ihr System auf einzigartige Weise.\r\n\r\nZWEI 120-MM-LÜFTER UND DIRECT AIRFLOW PATH\r\nSorgen Sie mit zwei CORSAIR SP120-Lüftern dafür, dass Ihr System innen und außen kühl bleibt und der Luftstrom direkt an die erhitzten Bauteile geleitet wird.\r\n\r\nKABELFÜHRUNGSÖFFNUNGEN UND KABELBEFESTIGUNGEN\r\nWenn jeder einen Blick in Ihr System werfen kann, sollte alles in perfekter Ordnung sein. Das SPEC-OMEGA erleichtert die saubere und ordentliche Kabelführung ohne Beeinträchtigung des Kühlluftstroms.\r\n\r\nFRONTKÜHLER MIT KOMPATIBILITÄT BIS 360 MM\r\nRüsten Sie Ihr System auf eine leistungsstarke Flüssigkeitskühlung für CPUs oder GPUs auf, und verwenden Sie dabei einen Hydro Series-Kühler von bis zu 360 mm.\r\n\r\nSCHNELLE INSTALLATION\r\nDank der werkzeuglosen Laufwerkinstallation und der abnehmbaren Seitenteile sparen Sie Zeit beim Aufbau Ihres PCs und gewinnen Zeit zum Genießen.', '85,92', 70838, 15, 'tower_1.png', 11),
(5, '6GB Asus GeForce GTX 1060 Dual OC Aktiv PCIe 3.0 x16 (Retail)', 'Die GeForce GTX 1060 Grafikkarte bietet innovative, neue Gaming-Technologien. Sie ist daher die ideale Wahl für die aktuellen hochauflösenden Spiele. Die GeForce GTX 1060, basiert auf NVIDIA Pascal™, der fortschrittlichsten Grafikprozessorarchitektur aller Zeiten, Sie liefert überzeugende Leistung, und bietet optimale Voraussetzungen für virtuelle Realität und vieles mehr.', '239,00', 68403, 10, 'gpu_1.png', 8),
(6, '8GB Asus GeForce RTX 2070 ROG Strix OC Aktiv PCIe 3.0 x16 (Retail)', 'ROG Strix GeForce® RTX 2070 OC-Edition 8GB GDDR6 8GB GDDR6 mit leistungsstarker Kühlung für höhere Bildwiederholraten und VR-Gaming.', '589,00', 8892045, 12, 'gpu_2.png', 8),
(7, 'AMD Ryzen 7 2700X 8x 3.70GHz So.AM4 BOX', 'Die nächste technische Errungenschaft aus dem Hause AMD ist die zweite Generation der RYZEN™ Prozessoren. Hier wird dem Nutzer ein geballtes Maß an technologischer Innovationen serviert, was alles bisher Dagewesene in den Schatten stellt.\r\n\r\nDie 12 Nanometer Prozessortechnologie ist die Form von technologischer Evolution, die eine massive Leistungssteigerung zu verantworten hat und Ihrem System zu Leistungen verhilft, die Sie bisher nicht gekannt haben. Das daraus resultierende Gaming-Erlebnis, wird Ihnen mehr als Freude bereiten und Ihnen ein zukunftssicheres Fundament für eine erfolgreiche Gaming-Karriere ebnen. Die neue Form der Power, Performance und Effizienz macht den RYZEN™ 7 2700X so einzigartig. Der Einsatz von SenseMI, verspricht Ihnen deutlich mehr Leistung als jemals geahnt. Aber das ist nicht das Einzige. Die geschickte Kombination der beiden Technologien Precision Boost und der XFR 2, verhelfen dem RYZEN™ 7 2700X zu einer künstlichen Intelligenz. Diese macht es möglich, dass der neue RYZEN™ von selbst erkennt, wann eine massivere Kühlung erforderlich ist. Auch wenn das System das Bedürfnis nach mehr Leistung verspürt, erkennt das der dem RYZEN™ 7 2700X und stellt diese zur Verfügung. Das ausgeprägte Nervensystem birgt also gewaltige Vorteile und damit einhergehende Möglichkeiten für Sie als Nutzer.\r\n\r\nWer bereits im Besitz eines Mainboards aus der AMD 400-Reihe ist, der muss auch keine teuren Neuanschaffungen befürchten, da diese bereits mit den neuen Desktop-Prozessoren kompatibel sind. Hierbei ist Precision Boost Overdrive ein treuer Wegbegleiter und sorgt für eine noch stärkere Leistung. Kompatibel sind aber nicht nur die Mainboards aus der AMD 400-Reihe, sondern auch die Boards aus der AMD 300-Reihe können mit den RYZEN™ Modellen der zweiten Generation betrieben werden. Wobei eine Erneuerung der Firmware, im Form eines (BIOS)-Updates notwenig ist.\r\n\r\nDieser intelligente Prozessor ist leistungsfähiger als jemals zuvor. Der neue RYZEN™ der zweiten Generation wird Sie durchweg begeistern.', '314,90', 71168, 25, 'cpu_1.png', 13),
(8, 'Intel Core i7 8700K 6x 3.70GHz So.1151 TRAY', 'Derzeit ist die Nutzung des Prozessors nur in Verbindung mit einem Intel 300-Chipsatz Mainboard möglich. Bei weiteren Fragen kontaktieren Sie bitte den Hersteller. Beim Kauf eines Prozessors bieten wir optional eine Prozessor-Montage an, sodass dieser auf Wunsch fachmännisch in den Sockel eingesetzt werden kann.', '384,29', 8813743, 18, 'cpu_2.png', 13),
(9, '27\" (68,58cm) Asus VN Serie VN279QLB schwarz 1920x1080 1xHDMI 1.3 / 1xDP', 'ASUS VN279QLB\r\n\r\n    Dank des ultra-schlanken Rahmens und des ergonomischen Designs optimal für Szenarien mit mehreren Bildschirmen geeignet\r\n    Optimal zum Arbeiten und Spielen dank Full HD 1080p-Bildqualität und AMVA+-Display mit hohem Betrachtungswinkel von 178°.\r\n    ASUS VividPixel-Technologie für ein kristallklares und detailgetreues Sehvergnügen\r\n    MHL- (Mobile High-Definition Link) Funktion für die Datenübertragung von mobilen Geräten zu Bildschirmen\r\n    Das ergonomische Design ist höhenverstellbar sowie schwenk-, neig- und drehbar, so dass der Sehkomfort auch nach mehreren Stunden noch erhalten bleibt. \r\n', '220,02', 8530251, 10, 'monitor_1.png', 9),
(10, '450 Watt be quiet! Straight Power 11 Modular 80+ Gold', 'Wie Sie hören, hören Sie nichts! Denn in Sachen Geräuschoptimierung setzt das be quiet! Straight Power 11 450W neue Maßstäbe. Möglich macht dies der beinahe geräuschlose SilentWings®3 135 mm Lüfter. Aber der Straight Power bringt Ihnen auch andere Features ins Haus, die zu überzeugen wissen. Der Luftdurchsatz wird durch den trichterförmigen Lufteinlass am Netzteilgehäuse deutlich erhöht. Um eine möglichst lange Lebensdauer und eine optimale Kühlung aus den verbauten Komponenten herauszuholen, glänzt das Netzteil mit dem kalbelosen Design auf der DC-Seite. Auch im Punkto Flexibilität und einfacher Handhabung kann das Straight Power 11 durch ein vollmodulares Kabelmanagement überzeugen.\r\n\r\nDie vier 12 V-Leitungen, sorgen für 450 Watt Dauerleistung und die verbauten japanischen Kondensatoren sind auf Temperaturen bis 105 °C ausgelegt. Auch die 80PLUS® Gold Zertifizierung mit einer Effizienz von bis zu 93 % ist ein weiteres Plus auf der Habenseite. Mit bis zu sechs PCI-Express-Anschlüssen sind leistungsstarke Multi-GPU-Systeme kein Problem, sondern eher eine Aufforderung. Ein besonderes Highlight für Gamer, Home-Theater Betreiber, oder diejenigen die ein Premium Netzteil für 3D-, Bild- und Videobearbeitung suchen.', '81,92', 8836860, 11, 'power_supply_1.png', 10),
(11, 'Lenovo TC V530 TWR I5-8400 8GB', 'Mini-Tower/ 8 GB RAM/ 256 GB - SSD HDD/ Win 10 Pro 64-Bit', '584,02', 8897419, 2, 'pc_1.png', 6),
(12, 'ZOTAC MEK1 Gaming PC GeForce 1060 Intel Core I5 7400 16GB DDR4 240GB NVMe SSD weiss', 'Zotac MEK1. Prozessor-Taktfrequenz: 3 GHz, Prozessorfamilie: 7th gen Intel® Core™ i5, Prozessor: i5-7400. RAM-Speicher: 16 GB, Interner Speichertyp: DDR4-SDRAM, Speichertaktfrequenz: 2400 MHz. Gesamtspeicherkapazität: 1240 GB, Speichermedien: HDD+SSD. On-Board Grafikadaptermodell: Intel® HD Graphics 630, Dediziertes Grafikadaptermodell: NVIDIA GeForce GTX 1060. Vorinstalliertes Betriebssystem: Windows 10 Home, Betriebssystem Architektur: 64-bit. Stromversorgung: 450 W. Gehäusetyp: Small Desktop. Produkttyp: Mini PC', '1025,95', 8860646, 1, 'pc_2.png', 6),
(13, 'Steinberg HALion 6 Retail GB/D/F', 'Steinberg HALion 6. Unterstützte Sprachen: Englisch. Unterstützte Windows-Betriebssysteme: Windows 10 Education,Windows 10 Education x64,Windows 10 Enterprise,Windows 10 Enterprise..., Unterstützte Mac-Betriebssysteme: Mac OS X 10.11 El Capitan,Mac OS X 10.12 Sierra\r\n\r\nDiese Software verfügt über einen Kopierschutz.', '348,19', 8758318, 60, 'audio_software_1.png', 3),
(14, 'Microsoft Windows 10 Home 64 Bit Deutsch DSP/SB', 'Ein neues Betriebssystem bedeutet oftmals, sich wieder Schritt für Schritt mit seinem zumeist komplett neuen Aufbau anzufreunden. Das kann sehr zeitraubend und unangenehm sein. Genau aus diesem Grunde hat Microsoft bei der Entwicklung von Windows 10 größten Wert darauf gelegt, Altbekanntes und Bewährtes in seinen Grundzügen beizubehalten. Sie werden überrascht sein, wie leicht Ihnen der Einstieg fällt. Das Startmenü ist zurück und nicht nur das, es wurde sogar verbessert. Alle ihre angehefteten Apps und Favoriten werden übernommen. Sie machen einfach dort weiter, wo Sie aufgehört haben. Mittels eines beschleunigten Startvorgangs treten Sie schneller in Aktion. Um die Features der aktuellen Windows-Version noch besser auf die Wünsche der Anwender abzustimmen, hat Windows mit dem Insider Programm eine weltweite Community ins Leben gerufen. Die Teilnehmer nutzen Windows 10 bereits und geben Feedback für dessen Verbesserung. Microsoft Edge, der brandaktuelle Browser von Windows 10 macht das Surfen noch einfacher und komfortabler. Abhängig von der genutzten Hardware schreiben sie direkt auf Websites, teilen Ihre Kommentare mit anderen, lesen Artikel in einem übersichtlichen Layout online oder speichern Ihre Favoriten und lesen sie später offline. Cortana bietet die Möglichkeit, auf direktem Wege wichtige Aktionen durchzuführen. Ohne die Seite zu verlassen tätigen Sie Reservierung oder lesen Rezensionen. Mit Multi-Doing ordnen Sie bis zu vier Apps so an, dass Sie sie alle im Blick haben. Benötigen Sie mehr Platz oder möchten Sie Aufgaben nach Projekten gruppieren, können sie auch virtuelle Desktops kreieren. Windows 10 passt Apps individuell an den verwendeten Gerätetyp an. Machen Sie sich keine Sorgen darüber, einen Termin zu verpassen. Cortana erinnert Sie zuverlässig und rechtzeitig. Die digitale Assistentin lernt permanent dazu und folgt Ihnen auf all Ihren Geräten, um Sie jederzeit bestmöglich zu unterstützen. Bei dieser Variante von Windows Home 10 handelt es sich um die 64-Bit-Version.', '94,90', 8631231, 10, 'os_1.png', 1),
(15, 'Microsoft Office Home and Business 2019 DE', 'Office 2019 Home Business, Lic, 1 PC, DE\r\n\r\nDiese Software verfügt über einen Kopierschutz.', '304,45', 8889171, 25, 'office_1.png', 4),
(16, 'Microsoft Office Home and Student 2019 DE', 'Office 2019 Home Student, Lic, 1 PC, DE\r\n\r\nDiese Software verfügt über einen Kopierschutz.', '147,61', 8889170, 14, 'office_2.png', 4),
(17, 'Kaspersky Lab Internet Security 1 Gerät Upgrade FFP Box (DE)', 'Beim Online-Banking oder -Shopping sind Ihre Finanzen und Kontoinformationen sicher und auf sozialen Netzwerken ist Ihre Identität geschützt. Außerdem erhalten Sie Schutz vor Angriffen beim Surfen im Internet und vor infizierten Dateien beim Downloaden oder Streamen.\r\n\r\nEgal, was Sie in Ihrem digitalen Leben tun: Der Premium-Schutz sorgt für Ihre Sicherheit.\r\n\r\n- Schützt vor Angriffen, Ransomware und mehr\r\n- Schützt Privatsphäre und persönliche Daten\r\n- Schützt Finanzen beim Banking und Shopping\r\n\r\nKaspersky Lab Internet Security 2019. Anzahl Benutzerlizenzen: 1 Lizenz(en), Zeitraum: 1 Jahr(e). Min. benötigter Festplattenplatz: 1150 MB, Min. benötigter RAM: 1000 MB. Software-Typ: Upgrade. Verteilungstyp: Physische Medien\r\n\r\nDiese Software verfügt über einen Kopierschutz.', '19,83', 8883810, 3, 'security_1.png', 5),
(18, 'Nero Burn Express 4 32 Bit Deutsch Brennprogramm Vollversion PC (CD)', ' Nero Burn Express 4 - Die ultimative Software zum Brennen, Kopieren und Rippen\r\nEinfach Brennen wie die Profis: Mit neuen Features ist Nero Burn Express 4 extrem sicher und kompatibel mit all Ihren Medien.\r\n\r\nMit Nero Burn Express 4 kann der Nutzer mit wenigen Klicks all seine Daten, Videos, Fotos und Musik einfach auf CD, DVD und Blu-ray DiscTM brennen, kopieren und rippen. Dank neuer Funktionen können Nutzer nun von erhöhter Sicherheit und Schutz profitieren, außerdem Original-Albumcover hinzufügen sowie eigene Disk Cover erstellen.\r\n\r\nNero Burn Express 4 hat für jede Art von Brennprojekt eine Lösung parat. Mithilfe der assistentengestützten Oberfläche können Nutzer per Drag & Drop Dateien und ganze Ordner schnell und einfach auf CD, DVD und Blu-ray Disc brennen. Die Software ermöglicht es einwandfreie Kopien von jedem Disk-Format zu erstellen. Nutzer können auch mehrere Kopien einer Disk erstellen, um sie mit Familie und Freunden zu teilen.\r\n\r\nDas Archivieren von Musik geht jetzt superschnell: Dank High-Speed Ripping mit exzellenter Ausgabequalität können Nutzer ihre Musik auf der Festplatte oder zur Wiedergabe auf dem MP3 Player sichern. Anwender können die neue Gracenote®-Anbindung für das Hinzufügen sowie die Anzeige von Original-Albumcovern bei einzelnen Songs und ganzen Alben nutzen - auch für unterwegs auf den neuesten mobilen Endgeräten mit iOS und Android.\r\n\r\nDiese Software verfügt über einen Kopierschutz.', '23,18', 8787819, 70, 'burn_software_1.png', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `productCategory`
--

CREATE TABLE `productCategory` (
  `pcId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `productCategory`
--

INSERT INTO `productCategory` (`pcId`, `name`) VALUES
(1, 'Hardware'),
(2, 'Software');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `productType`
--

CREATE TABLE `productType` (
  `ptId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `productType`
--

INSERT INTO `productType` (`ptId`, `name`) VALUES
(1, 'Betriebssysteme'),
(2, 'Brennprogramme'),
(3, 'Audioprogramme'),
(4, 'Office'),
(5, 'Sicherheit'),
(6, 'Rechner'),
(7, 'Mainboards'),
(8, 'Grafikkarte'),
(9, 'Monitore'),
(10, 'Netzteile'),
(11, 'Gehäuse'),
(12, 'Arbeitsspeicher'),
(13, 'Prozessoren');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product_details`
--

CREATE TABLE `product_details` (
  `pdId` int(11) NOT NULL,
  `pcId` int(11) NOT NULL,
  `ptId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `product_details`
--

INSERT INTO `product_details` (`pdId`, `pcId`, `ptId`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product_order`
--

CREATE TABLE `product_order` (
  `oId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `cId` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `product_order`
--

INSERT INTO `product_order` (`oId`, `pId`, `cId`, `orderDate`, `amount`) VALUES
(1, 4, 7, '2019-02-08 00:00:00', 1),
(2, 2, 5, '2019-02-11 00:00:00', 1),
(3, 18, 2, '2019-01-31 00:00:00', 2),
(4, 17, 10, '2019-02-13 00:00:00', 4),
(5, 14, 3, '2019-02-05 00:00:00', 1),
(6, 12, 9, '2019-02-02 00:00:00', 1),
(7, 3, 8, '2019-01-09 00:00:00', 1),
(8, 7, 4, '2019-01-15 00:00:00', 2),
(9, 9, 1, '2019-01-21 00:00:00', 1),
(10, 9, 2, '2019-01-25 00:00:00', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product_recension`
--

CREATE TABLE `product_recension` (
  `prId` int(11) NOT NULL,
  `cId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `recension` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `product_recension`
--

INSERT INTO `product_recension` (`prId`, `cId`, `pId`, `recension`) VALUES
(1, 9, 12, 'Der Gamer-PC funktioniert einwandfrei! Kann ich nur weiterempfehlen.'),
(2, 2, 18, 'Danke für das Brennprogramm. Jetzt kann ich endlich meine Musik auf die CDs brennen.');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cId`);

--
-- Indizes für die Tabelle `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pId`);

--
-- Indizes für die Tabelle `productCategory`
--
ALTER TABLE `productCategory`
  ADD PRIMARY KEY (`pcId`);

--
-- Indizes für die Tabelle `productType`
--
ALTER TABLE `productType`
  ADD PRIMARY KEY (`ptId`);

--
-- Indizes für die Tabelle `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`pdId`);

--
-- Indizes für die Tabelle `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`oId`);

--
-- Indizes für die Tabelle `product_recension`
--
ALTER TABLE `product_recension`
  ADD PRIMARY KEY (`prId`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `product`
--
ALTER TABLE `product`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT für Tabelle `productCategory`
--
ALTER TABLE `productCategory`
  MODIFY `pcId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `productType`
--
ALTER TABLE `productType`
  MODIFY `ptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `product_details`
--
ALTER TABLE `product_details`
  MODIFY `pdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `product_order`
--
ALTER TABLE `product_order`
  MODIFY `oId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `product_recension`
--
ALTER TABLE `product_recension`
  MODIFY `prId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
