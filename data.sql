
DROP TABLE IF EXISTS `dbo.Contract`;
CREATE TABLE `dbo.Contract` (
  `Contract_ID` varchar(0) DEFAULT NULL,
  `StartDate` varchar(0) DEFAULT NULL,
  `EndDate` varchar(0) DEFAULT NULL,
  `SubscriptionSubscription_ID` varchar(0) DEFAULT NULL,
  `SubscriberCustomer_ID` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.DataScoop`;
CREATE TABLE `dbo.DataScoop` (
  `DataScoop_ID` varchar(0) DEFAULT NULL,
  `ZoneZone_ID` varchar(0) DEFAULT NULL
)

DROP TABLE IF EXISTS `dbo.DataScoop_Contract`;
CREATE TABLE `dbo.DataScoop_Contract` (
  `ID` varchar(0) DEFAULT NULL,
  `DataScoopDataScoop_ID` varchar(0) DEFAULT NULL,
  `ContractContract_ID` varchar(0) DEFAULT NULL
)

DROP TABLE IF EXISTS `dbo.Drone`;
CREATE TABLE `dbo.Drone` (
  `Drone_ID` varchar(0) DEFAULT NULL,
  `DataScoopDataScoop_ID` varchar(0) DEFAULT NULL,
  `Temperatre` varchar(0) DEFAULT NULL,
  `LightStrength` varchar(0) DEFAULT NULL,
  `SpectralData` varchar(0) DEFAULT NULL,
  `Humidity` varchar(0) DEFAULT NULL
)

DROP TABLE IF EXISTS `dbo.DroneMaintenance`;
CREATE TABLE `dbo.DroneMaintenance` (
  `ID` varchar(0) DEFAULT NULL,
  `MaintenanceMaintenance_ID` varchar(0) DEFAULT NULL,
  `DroneDrone_ID` varchar(0) DEFAULT NULL
)

DROP TABLE IF EXISTS `dbo.DroneParts`;
CREATE TABLE `dbo.DroneParts` (
  `ID` varchar(0) DEFAULT NULL,
  `DroneDrone_ID` varchar(0) DEFAULT NULL,
  `PartsPart_ID` varchar(0) DEFAULT NULL
)

DROP TABLE IF EXISTS `dbo.ExecutiveAdminCanWrite`;
CREATE TABLE `dbo.ExecutiveAdminCanWrite` (
  `ID` varchar(0) DEFAULT NULL,
  `StaffStaff_ID` varchar(0) DEFAULT NULL,
  `ContractContract_ID` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.Live3DVideo`;
CREATE TABLE `dbo.Live3DVideo` (
  `Video_ID` varchar(0) DEFAULT NULL,
  `Duration` varchar(0) DEFAULT NULL,
  `Subscription_Live3DVideoID` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.Live3DVideo_Drone`;
CREATE TABLE `dbo.Live3DVideo_Drone` (
  `ID` varchar(0) DEFAULT NULL,
  `DroneDrone_ID` varchar(0) DEFAULT NULL,
  `Live3DVideoVideo_ID` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.Location`;
CREATE TABLE `dbo.Location` (
  `ID` varchar(0) DEFAULT NULL,
  `Altitude` varchar(0) DEFAULT NULL,
  `Latitude` varchar(0) DEFAULT NULL,
  `Longitude` varchar(0) DEFAULT NULL,
  `ZoneZone_ID` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.Maintainer_Maintains`;
CREATE TABLE `dbo.Maintainer_Maintains` (
  `ID` varchar(0) DEFAULT NULL,
  `StaffStaff_ID` varchar(0) DEFAULT NULL,
  `MaintenanceMaintenance_ID` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.Maintenance`;
CREATE TABLE `dbo.Maintenance` (
  `Maintenance_ID` varchar(0) DEFAULT NULL,
  `Notes` varchar(0) DEFAULT NULL,
  `Timestamp` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.Parts`;
CREATE TABLE `dbo.Parts` (
  `Part_ID` smallint(6) DEFAULT NULL,
  `PartName` varchar(10) DEFAULT NULL
) 

INSERT INTO `dbo.Parts` VALUES (1,'Stone'),(2,'Vinyl'),(3,'Plastic'),(4,'Granite'),(5,'Wood'),(6,'Rubber'),(7,'Brass'),(8,'Granite'),(9,'Plastic'),(10,'Wood'),(11,'Wood'),(12,'Vinyl'),(13,'Vinyl'),(14,'Stone'),(15,'Vinyl'),(16,'Brass'),(17,'Granite'),(18,'Steel'),(19,'Aluminum'),(20,'Plastic'),(21,'Aluminum'),(22,'Glass'),(23,'Brass'),(24,'Vinyl'),(25,'Granite'),(26,'Wood'),(27,'Brass'),(28,'Granite'),(29,'Wood'),(30,'Wood'),(31,'Glass'),(32,'Aluminum'),(33,'Stone'),(34,'Plexiglass'),(35,'Rubber'),(36,'Vinyl'),(37,'Plexiglass'),(38,'Steel'),(39,'Wood'),(40,'Stone'),(41,'Wood'),(42,'Wood'),(43,'Brass'),(44,'Steel'),(45,'Plastic'),(46,'Wood'),(47,'Plexiglass'),(48,'Stone'),(49,'Aluminum'),(50,'Aluminum'),(51,'Stone'),(52,'Plastic'),(53,'Vinyl'),(54,'Aluminum'),(55,'Plexiglass'),(56,'Aluminum'),(57,'Granite'),(58,'Plexiglass'),(59,'Plastic'),(60,'Vinyl'),(61,'Wood'),(62,'Stone'),(63,'Aluminum'),(64,'Aluminum'),(65,'Stone'),(66,'Vinyl'),(67,'Granite'),(68,'Plexiglass'),(69,'Plexiglass'),(70,'Glass'),(71,'Aluminum'),(72,'Brass'),(73,'Stone'),(74,'Plastic'),(75,'Plexiglass'),(76,'Stone'),(77,'Granite'),(78,'Stone'),(79,'Wood'),(80,'Stone'),(81,'Plexiglass'),(82,'Plastic'),(83,'Rubber'),(84,'Wood'),(85,'Glass'),(86,'Plexiglass'),(87,'Glass'),(88,'Aluminum'),(89,'Steel'),(90,'Brass'),(91,'Aluminum'),(92,'Rubber'),(93,'Granite'),(94,'Brass'),(95,'Wood'),(96,'Aluminum'),(97,'Wood'),(98,'Rubber'),(99,'Glass'),(100,'Stone');

DROP TABLE IF EXISTS `dbo.SalesPersonCanSell`;
CREATE TABLE `dbo.SalesPersonCanSell` (
  `ID` varchar(0) DEFAULT NULL,
  `StaffStaff_ID` varchar(0) DEFAULT NULL,
  `ContractContract_ID` varchar(0) DEFAULT NULL
)

DROP TABLE IF EXISTS `dbo.Staff`;
CREATE TABLE `dbo.Staff` (
  `Staff_ID` varchar(0) DEFAULT NULL,
  `Name` varchar(0) DEFAULT NULL,
  `ExecutiveAdmin` varchar(0) DEFAULT NULL,
  `SalesPerson` varchar(0) DEFAULT NULL,
  `Maintainer` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.Subscriber`;
CREATE TABLE `dbo.Subscriber` (
  `Customer_ID` varchar(0) DEFAULT NULL,
  `Name` varchar(0) DEFAULT NULL,
  `Email` varchar(0) DEFAULT NULL,
  `Address` varchar(0) DEFAULT NULL,
  `PhoneNumber` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.Subscription`;
CREATE TABLE `dbo.Subscription` (
  `Subscription_ID` varchar(0) DEFAULT NULL,
  `Price` varchar(0) DEFAULT NULL,
  `Details` varchar(0) DEFAULT NULL,
  `Discount` varchar(0) DEFAULT NULL,
  `SubscriptionTier` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.Subscription_Live3DVideo`;
CREATE TABLE `dbo.Subscription_Live3DVideo` (
  `ID` varchar(0) DEFAULT NULL,
  `SubscriptionSubscription_ID` varchar(0) DEFAULT NULL
) 

DROP TABLE IF EXISTS `dbo.Supplier`;
CREATE TABLE `dbo.Supplier` (
  `Supplier_ID` smallint(6) DEFAULT NULL,
  `SupplierName` varchar(36) DEFAULT NULL,
  `Address` varchar(26) DEFAULT NULL
) 

INSERT INTO `dbo.Supplier` VALUES (1,'Romaguera, Glover and Turcotte','05 Mcbride Trail'),(2,'Wisozk and Sons','5614 Holy Cross Road'),(3,'Larson LLC','0702 Dorton Pass'),(4,'Lehner and Sons','0275 Golden Leaf Hill'),(5,'DuBuque Group','45987 Granby Point'),(6,'Feeney Inc','4 South Hill'),(7,'Jast, Orn and Hessel','987 Artisan Trail'),(8,'Russel Group','6 Texas Plaza'),(9,'Halvorson, Runolfsson and Feil','260 Thompson Plaza'),(10,'Kemmer-Haley','1116 Golden Leaf Alley'),(11,'Kreiger-Schiller','50059 Scott Hill'),(12,'Bernhard Inc','868 Lakewood Junction'),(13,'Huel and Sons','107 Union Avenue'),(14,'Kihn-Leffler','392 Service Park'),(15,'Bednar, McClure and Howell','1023 Coolidge Drive'),(16,'Leannon-Champlin','12 Ronald Regan Hill'),(17,'McClure LLC','82529 Hauk Terrace'),(18,'Grimes-Weber','2635 Hoepker Parkway'),(19,'Padberg, Shanahan and Daniel','4078 Amoth Junction'),(20,'Krajcik-Reynolds','7446 Hauk Terrace'),(21,'Tromp-Hodkiewicz','3212 Grover Place'),(22,'Treutel Inc','0 Sycamore Trail'),(23,'McCullough-Baumbach','05526 Sycamore Hill'),(24,'Veum and Sons','6 Troy Lane'),(25,'Rosenbaum-Mohr','0 Hanover Street'),(26,'Reichel Inc','074 Acker Lane'),(27,'Dietrich and Sons','7163 Oakridge Avenue'),(28,'Torphy-Bartell','3 3rd Street'),(29,'Bartoletti-Lakin','8696 Orin Way'),(30,'White, Boyer and Wunsch','26114 Arrowood Place'),(31,'Borer, Stark and Jakubowski','2839 Beilfuss Plaza'),(32,'Torp and Sons','039 Randy Trail'),(33,'Schiller-McCullough','2650 Bluestem Plaza'),(34,'Champlin Inc','0 Rusk Hill'),(35,'Johns, Gottlieb and Langosh','8 Londonderry Circle'),(36,'Gutmann, Johnston and Lemke','03396 Thompson Pass'),(37,'Ullrich, Bernier and Emmerich','74003 Scofield Crossing'),(38,'Armstrong-Kihn','0 Di Loreto Place'),(39,'Zieme and Sons','15558 Dennis Way'),(40,'Flatley Group','48 Elka Way'),(41,'Harris-Kutch','5199 Parkside Crossing'),(42,'Jacobi LLC','21 Monterey Trail'),(43,'Auer Inc','1 Northview Point'),(44,'Schroeder Inc','265 Pawling Junction'),(45,'Koch, Koepp and Toy','74883 Northport Drive'),(46,'Mohr LLC','5 Nevada Trail'),(47,'Senger Group','87559 John Wall Crossing'),(48,'Lebsack-Mosciski','4 Golden Leaf Hill'),(49,'Lind-Kerluke','44818 Bayside Street'),(50,'Koelpin-Bashirian','9 Judy Hill'),(51,'Jaskolski, Stamm and Zemlak','55525 Brentwood Lane'),(52,'Johnson, Purdy and Schaden','2 2nd Terrace'),(53,'Mann and Sons','956 Eagan Alley'),(54,'Greenfelder, Wolf and Connelly','15110 Colorado Park'),(55,'Pacocha, Bradtke and Denesik','71 Saint Paul Trail'),(56,'Nienow-Kuphal','58 Oakridge Junction'),(57,'Streich-Koch','8 Fairfield Circle'),(58,'Watsica and Sons','231 Nobel Center'),(59,'Howell-Stracke','440 Sunbrook Junction'),(60,'Botsford Inc','45 Manufacturers Street'),(61,'Roob Inc','90 Canary Alley'),(62,'Sanford, Abbott and Braun','25 Dovetail Park'),(63,'O\'Reilly-Hayes','1594 Colorado Trail'),(64,'Powlowski, Bechtelar and Stokes','31275 Haas Way'),(65,'Haag Group','00453 Saint Paul Terrace'),(66,'Wiegand-Schaden','20 Oxford Center'),(67,'Ebert, Willms and Cruickshank','123 Forster Hill'),(68,'McCullough and Sons','87079 Redwing Avenue'),(69,'Zulauf-Morissette','0117 Bunker Hill Park'),(70,'Hand-Hermann','50 Trailsway Circle'),(71,'Pfannerstill Inc','313 Del Mar Circle'),(72,'Conn-Dach','0 Kropf Court'),(73,'Hahn, Russel and Swaniawski','28 Granby Circle'),(74,'Rippin-Satterfield','10773 Lawn Road'),(75,'Connelly and Sons','49478 Quincy Place'),(76,'Bruen-Predovic','5 Union Place'),(77,'Lynch, O\'Keefe and Hauck','3242 Forest Run Pass'),(78,'Thompson, Schowalter and McKenzie','03908 Kinsman Circle'),(79,'Hamill-Wisoky','60 Helena Point'),(80,'Bergnaum-Runte','12 Mosinee Drive'),(81,'Weber Group','80847 Jenna Plaza'),(82,'Emard-Kessler','503 Kensington Circle'),(83,'Weber, Cronin and Wyman','93812 Scott Terrace'),(84,'Schimmel and Sons','45 Glacier Hill Way'),(85,'Kulas-Shanahan','04 Barnett Circle'),(86,'Kutch and Sons','273 Aberg Pass'),(87,'Reinger, Hane and Watsica','837 Mallard Way'),(88,'Kirlin-Moen','06040 Orin Crossing'),(89,'Rosenbaum, Mohr and Kunde','43314 Merrick Pass'),(90,'Schultz, Bashirian and Carter','717 Oxford Road'),(91,'Walsh Inc','64 Bluestem Parkway'),(92,'Collins-Leannon','021 Sullivan Pass'),(93,'Rutherford, Feil and Stark','121 Muir Drive'),(94,'Halvorson-Purdy','34519 Namekagon Street'),(95,'Williamson-Bernier','393 Mayfield Plaza'),(96,'Klein, Hickle and Brakus','9 Dunning Court'),(97,'Robel-Mayert','51 Pond Way'),(98,'Marks, Wisozk and Buckridge','317 Carpenter Point'),(99,'Fritsch, Klein and Schaefer','634 Pleasure Parkway'),(100,'Klein-Ratke','578 Messerschmidt Circle');


DROP TABLE IF EXISTS `dbo.SupplierParts`;
CREATE TABLE `dbo.SupplierParts` (
  `ID` smallint(6) DEFAULT NULL,
  `SupplierSupplier_ID` smallint(6) DEFAULT NULL,
  `PartsPart_ID` smallint(6) DEFAULT NULL
) 

INSERT INTO `dbo.SupplierParts` VALUES (1,703,12),(2,562,8),(3,354,28),(4,915,14),(5,272,93),(6,933,98),(7,647,86),(8,239,15),(9,306,72),(10,11,44),(11,127,71),(12,574,44),(13,755,36),(14,185,92),(15,816,19),(16,748,75),(17,186,74),(18,381,7),(19,550,79),(20,663,100),(21,250,87),(22,722,56),(23,795,99),(24,573,82),(25,217,53),(26,679,3),(27,244,92),(28,647,81),(29,879,35),(30,251,70),(31,459,77),(32,494,72),(33,783,38),(34,647,78),(35,823,49),(36,795,46),(37,169,67),(38,249,69),(39,554,37),(40,861,34),(41,372,11),(42,483,94),(43,569,33),(44,736,94),(45,201,84),(46,517,17),(47,918,20),(48,279,51),(49,58,27),(50,29,30),(51,764,6),(52,416,53),(53,602,13),(54,57,55),(55,847,96),(56,486,28),(57,317,75),(58,227,54),(59,962,35),(60,781,15),(61,842,66),(62,176,92),(63,434,51),(64,698,90),(65,52,19),(66,19,36),(67,490,25),(68,650,70),(69,938,51),(70,40,77),(71,823,88),(72,956,56),(73,738,31),(74,851,48),(75,105,84),(76,302,27),(77,518,56),(78,507,81),(79,47,48),(80,878,18),(81,303,97),(82,929,25),(83,159,60),(84,670,100),(85,380,48),(86,872,83),(87,172,6),(88,12,44),(89,399,60),(90,705,87),(91,376,89),(92,963,70),(93,163,45),(94,73,27),(95,638,86),(96,587,41),(97,753,87),(98,536,68),(99,788,66),(100,391,58);

DROP TABLE IF EXISTS `dbo.Zone`;
CREATE TABLE `dbo.Zone` (
  `Zone_ID` varchar(0) DEFAULT NULL
) 
 