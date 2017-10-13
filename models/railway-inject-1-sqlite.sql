PRAGMA synchronous = OFF;
PRAGMA journal_mode = MEMORY;
BEGIN TRANSACTION;
CREATE TABLE `Region` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
);
INSERT INTO `Region` VALUES (4),(52),(69),(214),(622);
CREATE TABLE `Route` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `active` integer DEFAULT NULL
,  `entry` integer DEFAULT NULL
,  `exit` integer DEFAULT NULL
);
INSERT INTO `Route` VALUES (3,1,1,2),(51,1,2,50),(68,1,50,67),(213,1,67,212),(621,1,212,1);
CREATE TABLE `Segment` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `length` integer NOT NULL DEFAULT '1'
);
INSERT INTO `Segment` VALUES (7,504),(8,776),(9,60),(10,808),(11,576),(12,358),(14,335),(15,461),(16,439),(17,879),(18,90),(20,829),(21,395),(22,732),(23,134),(24,857),(26,376),(27,803),(28,505),(29,137),(30,294),(32,494),(33,306),(34,979),(35,597),(36,815),(38,396),(39,813),(40,518),(41,831),(42,730),(44,127),(45,968),(46,974),(47,197),(48,324),(55,324),(56,996),(57,645),(58,455),(59,517),(61,582),(62,641),(63,683),(64,639),(65,212),(72,852),(73,994),(74,931),(75,472),(76,367),(78,679),(79,180),(80,745),(81,629),(82,711),(84,633),(85,733),(86,542),(87,449),(88,655),(90,549),(91,988),(92,567),(93,483),(94,234),(96,636),(97,132),(98,849),(99,421),(100,345),(102,-427),(103,771),(104,892),(105,387),(106,149),(108,313),(109,209),(110,814),(111,721),(112,26),(116,436),(117,99),(118,-816),(119,853),(120,153),(122,560),(123,872),(124,190),(125,340),(126,764),(127,35),(129,872),(130,193),(131,515),(132,141),(133,11),(134,288),(138,994),(139,852),(140,-713),(141,933),(142,232),(144,692),(145,901),(146,590),(147,530),(148,896),(150,494),(151,325),(152,273),(153,800),(154,137),(156,813),(157,137),(158,975),(159,53),(160,386),(162,633),(163,220),(164,697),(165,929),(166,586),(168,152),(169,45),(170,886),(171,85),(172,23),(176,246),(177,245),(178,246),(179,239),(180,437),(182,544),(183,375),(184,398),(185,942),(186,191),(188,18),(189,1000),(190,488),(191,301),(192,559),(194,437),(195,997),(196,511),(197,494),(198,625),(200,23),(201,111),(202,578),(203,757),(204,893),(206,711),(207,227),(208,740),(209,145),(210,242),(217,789),(218,840),(219,456),(220,284),(221,434),(223,546),(224,613),(225,977),(226,801),(227,824),(229,386),(230,395),(231,769),(232,608),(233,380),(235,829),(236,230),(237,-617),(238,609),(239,620),(241,486),(242,181),(243,921),(244,54),(245,329),(247,745),(248,703),(249,322),(250,763),(251,369),(253,890),(254,591),(255,736),(256,547),(257,836),(259,257),(260,746),(261,488),(262,830),(263,366),(265,754),(266,638),(267,214),(268,102),(269,985),(273,517),(274,302),(275,785),(276,593),(277,566),(279,570),(280,386),(281,949),(282,462),(283,158),(287,657),(288,697),(289,931),(290,225),(291,119),(293,999),(294,342),(295,490),(296,986),(297,392),(299,798),(300,782),(301,480),(302,212),(303,214),(307,907),(308,617),(309,118),(310,772),(311,533),(315,981),(316,510),(317,186),(318,298),(319,324),(321,372),(322,881),(323,219),(324,740),(325,822),(327,897),(328,521),(329,685),(330,750),(331,630),(333,250),(334,809),(335,579),(336,77),(337,39),(341,719),(342,91),(343,796),(344,963),(345,894),(347,802),(348,951),(349,402),(350,718),(351,337),(353,942),(354,59),(355,547),(356,686),(357,836),(361,212),(362,579),(363,403),(364,218),(365,616),(367,191),(368,870),(369,-608),(370,344),(371,374),(373,333),(374,792),(375,923),(376,100),(377,627),(379,258),(380,699),(381,889),(382,11),(383,465),(385,14),(386,470),(387,232),(388,343),(389,605),(391,771),(392,799),(393,288),(394,333),(395,964),(397,994),(398,518),(399,167),(400,90),(401,466),(405,52),(406,886),(407,685),(408,248),(409,404),(411,261),(412,111),(413,408),(414,852),(415,610),(417,36),(418,514),(419,458),(420,883),(421,918),(423,270),(424,345),(425,684),(426,820),(427,156),(429,428),(430,754),(431,714),(432,901),(433,735),(435,534),(436,372),(437,49),(438,917),(439,369),(441,373),(442,94),(443,507),(444,737),(445,348),(447,433),(448,411),(449,149),(450,541),(451,773),(453,278),(454,75),(455,70),(456,565),(457,809),(461,883),(462,160),(463,415),(464,744),(465,136),(467,461),(468,640),(469,224),(470,267),(471,857),(473,-92),(474,933),(475,627),(476,976),(477,773),(479,644),(480,493),(481,519),(482,273),(483,-641),(485,699),(486,207),(487,293),(488,157),(489,60),(491,620),(492,718),(493,905),(494,553),(495,453),(497,536),(498,322),(499,783),(500,524),(501,283),(503,82),(504,574),(505,36),(506,464),(507,263),(511,717),(512,970),(513,150),(514,39),(515,159),(517,83),(518,683),(519,632),(520,806),(521,453),(523,777),(524,904),(525,546),(526,371),(527,352),(529,227),(530,742),(531,208),(532,177),(533,611),(537,576),(538,605),(539,326),(540,386),(541,531),(543,781),(544,652),(545,83),(546,27),(547,973),(549,42),(550,918),(551,772),(552,185),(553,817),(555,850),(556,503),(557,314),(558,847),(559,300),(561,121),(562,51),(563,977),(564,270),(565,130),(569,195),(570,69),(571,899),(572,47),(573,373),(575,521),(576,423),(577,21),(578,450),(579,820),(583,372),(584,291),(585,993),(586,95),(587,455),(589,522),(590,325),(591,984),(592,536),(593,460),(597,108),(598,691),(599,176),(600,822),(601,759),(603,348),(604,61),(605,-825),(606,917),(607,749),(609,569),(610,934),(611,971),(612,-902),(613,593),(615,571),(616,358),(617,787),(618,673),(619,35),(625,969),(626,718),(627,421),(628,307),(629,514),(633,161),(634,530),(635,1000),(636,686),(637,534),(639,-856),(640,520),(641,909),(642,664),(643,750),(645,944),(646,200),(647,895),(648,79),(649,214),(651,135),(652,345),(653,493),(654,922),(655,943),(657,639),(658,168),(659,758),(660,432),(661,89),(663,589),(664,135),(665,533),(666,735),(667,632),(669,342),(670,469),(671,29),(672,576),(673,320),(677,78),(678,225),(679,56),(680,966),(681,161),(683,517),(684,145),(685,778),(686,-902),(687,467),(689,53),(690,367),(691,916),(692,522),(693,182),(694,579),(698,972),(699,940),(700,349),(701,900),(702,695),(704,449),(705,223),(706,51),(707,-161),(708,332),(710,81),(711,282),(712,510),(713,983),(714,941),(716,78),(717,777),(718,229),(719,997),(720,137),(722,596),(723,916),(724,331),(725,407),(726,500),(728,54),(729,683),(730,50),(731,633),(732,578),(736,456),(737,596),(738,525),(739,836),(740,691);
CREATE TABLE `Semaphore` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `segment` integer NOT NULL
,  `signal` integer NOT NULL
);
INSERT INTO `Semaphore` VALUES (1,625,2),(2,7,2),(50,55,2),(67,72,2),(212,217,2);
CREATE TABLE `Sensor` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `region` integer NOT NULL
);
INSERT INTO `Sensor` VALUES (6,4),(13,4),(19,4),(25,4),(31,4),(37,4),(43,4),(54,52),(60,52),(71,69),(77,69),(83,69),(89,69),(95,69),(101,69),(107,69),(115,69),(121,69),(128,69),(137,69),(143,69),(149,69),(155,69),(161,69),(167,69),(175,69),(181,69),(187,69),(193,69),(199,69),(205,69),(216,214),(222,214),(228,214),(234,214),(240,214),(246,214),(252,214),(258,214),(264,214),(272,214),(278,214),(286,214),(292,214),(298,214),(306,214),(314,214),(320,214),(326,214),(332,214),(340,214),(346,214),(352,214),(360,214),(366,214),(372,214),(378,214),(384,214),(390,214),(396,214),(404,214),(410,214),(416,214),(422,214),(428,214),(434,214),(440,214),(446,214),(452,214),(460,214),(466,214),(472,214),(478,214),(484,214),(490,214),(496,214),(502,214),(510,214),(516,214),(522,214),(528,214),(536,214),(542,214),(548,214),(554,214),(560,214),(568,214),(574,214),(582,214),(588,214),(596,214),(602,214),(608,214),(614,214),(624,622),(632,622),(638,622),(644,622),(650,622),(656,622),(662,622),(668,622),(676,622),(682,622),(688,622),(697,622),(703,622),(709,622),(715,622),(721,622),(727,622),(735,622);
CREATE TABLE `Switch` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `currentPosition` integer NOT NULL
);
INSERT INTO `Switch` VALUES (5,0),(53,1),(70,0),(114,2),(136,2),(174,2),(215,2),(271,1),(285,2),(305,0),(313,0),(339,2),(359,0),(403,2),(459,1),(509,0),(535,1),(567,1),(581,1),(595,0),(623,0),(631,0),(675,2),(696,2),(734,0);
CREATE TABLE `SwitchPosition` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `route` integer DEFAULT NULL
,  `target` integer DEFAULT NULL
,  `position` integer NOT NULL
);
INSERT INTO `SwitchPosition` VALUES (49,3,5,0),(66,51,53,1),(113,68,70,0),(135,68,114,2),(173,68,136,2),(211,68,174,2),(270,213,215,2),(284,213,271,1),(304,213,285,2),(312,213,305,0),(338,213,313,0),(358,213,339,2),(402,213,359,2),(458,213,403,2),(508,213,459,1),(534,213,509,0),(566,213,535,1),(580,213,567,1),(594,213,581,1),(620,213,595,0),(630,621,623,0),(674,621,631,0),(695,621,675,2),(733,621,696,2),(741,621,734,0);
CREATE TABLE `TrackElement` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `region` integer NOT NULL
);
INSERT INTO `TrackElement` VALUES (5,4),(7,4),(8,4),(9,4),(10,4),(11,4),(12,4),(14,4),(15,4),(16,4),(17,4),(18,4),(20,4),(21,4),(22,4),(23,4),(24,4),(26,4),(27,4),(28,4),(29,4),(30,4),(32,4),(33,4),(34,4),(35,4),(36,4),(38,4),(39,4),(40,4),(41,4),(42,4),(44,4),(45,4),(46,4),(47,4),(48,4),(53,52),(55,52),(56,52),(57,52),(58,52),(59,52),(61,52),(62,52),(63,52),(64,52),(65,52),(70,69),(72,69),(73,69),(74,69),(75,69),(76,69),(78,69),(79,69),(80,69),(81,69),(82,69),(84,69),(85,69),(86,69),(87,69),(88,69),(90,69),(91,69),(92,69),(93,69),(94,69),(96,69),(97,69),(98,69),(99,69),(100,69),(102,69),(103,69),(104,69),(105,69),(106,69),(108,69),(109,69),(110,69),(111,69),(112,69),(114,69),(116,69),(117,69),(118,69),(119,69),(120,69),(122,69),(123,69),(124,69),(125,69),(126,69),(127,69),(129,69),(130,69),(131,69),(132,69),(133,69),(134,69),(136,69),(138,69),(139,69),(140,69),(141,69),(142,69),(144,69),(145,69),(146,69),(147,69),(148,69),(150,69),(151,69),(152,69),(153,69),(154,69),(156,69),(157,69),(158,69),(159,69),(160,69),(162,69),(163,69),(164,69),(165,69),(166,69),(168,69),(169,69),(170,69),(171,69),(172,69),(174,69),(176,69),(177,69),(178,69),(179,69),(180,69),(182,69),(183,69),(184,69),(185,69),(186,69),(188,69),(189,69),(190,69),(191,69),(192,69),(194,69),(195,69),(196,69),(197,69),(198,69),(200,69),(201,69),(202,69),(203,69),(204,69),(206,69),(207,69),(208,69),(209,69),(210,69),(215,214),(217,214),(218,214),(219,214),(220,214),(221,214),(223,214),(224,214),(225,214),(226,214),(227,214),(229,214),(230,214),(231,214),(232,214),(233,214),(235,214),(236,214),(237,214),(238,214),(239,214),(241,214),(242,214),(243,214),(244,214),(245,214),(247,214),(248,214),(249,214),(250,214),(251,214),(253,214),(254,214),(255,214),(256,214),(257,214),(259,214),(260,214),(261,214),(262,214),(263,214),(265,214),(266,214),(267,214),(268,214),(269,214),(271,214),(273,214),(274,214),(275,214),(276,214),(277,214),(279,214),(280,214),(281,214),(282,214),(283,214),(285,214),(287,214),(288,214),(289,214),(290,214),(291,214),(293,214),(294,214),(295,214),(296,214),(297,214),(299,214),(300,214),(301,214),(302,214),(303,214),(305,214),(307,214),(308,214),(309,214),(310,214),(311,214),(313,214),(315,214),(316,214),(317,214),(318,214),(319,214),(321,214),(322,214),(323,214),(324,214),(325,214),(327,214),(328,214),(329,214),(330,214),(331,214),(333,214),(334,214),(335,214),(336,214),(337,214),(339,214),(341,214),(342,214),(343,214),(344,214),(345,214),(347,214),(348,214),(349,214),(350,214),(351,214),(353,214),(354,214),(355,214),(356,214),(357,214),(359,214),(361,214),(362,214),(363,214),(364,214),(365,214),(367,214),(368,214),(369,214),(370,214),(371,214),(373,214),(374,214),(375,214),(376,214),(377,214),(379,214),(380,214),(381,214),(382,214),(383,214),(385,214),(386,214),(387,214),(388,214),(389,214),(391,214),(392,214),(393,214),(394,214),(395,214),(397,214),(398,214),(399,214),(400,214),(401,214),(403,214),(405,214),(406,214),(407,214),(408,214),(409,214),(411,214),(412,214),(413,214),(414,214),(415,214),(417,214),(418,214),(419,214),(420,214),(421,214),(423,214),(424,214),(425,214),(426,214),(427,214),(429,214),(430,214),(431,214),(432,214),(433,214),(435,214),(436,214),(437,214),(438,214),(439,214),(441,214),(442,214),(443,214),(444,214),(445,214),(447,214),(448,214),(449,214),(450,214),(451,214),(453,214),(454,214),(455,214),(456,214),(457,214),(459,214),(461,214),(462,214),(463,214),(464,214),(465,214),(467,214),(468,214),(469,214),(470,214),(471,214),(473,214),(474,214),(475,214),(476,214),(477,214),(479,214),(480,214),(481,214),(482,214),(483,214),(485,214),(486,214),(487,214),(488,214),(489,214),(491,214),(492,214),(493,214),(494,214),(495,214),(497,214),(498,214),(499,214),(500,214),(501,214),(503,214),(504,214),(505,214),(506,214),(507,214),(509,214),(511,214),(512,214),(513,214),(514,214),(515,214),(517,214),(518,214),(519,214),(520,214),(521,214),(523,214),(524,214),(525,214),(526,214),(527,214),(529,214),(530,214),(531,214),(532,214),(533,214),(535,214),(537,214),(538,214),(539,214),(540,214),(541,214),(543,214),(544,214),(545,214),(546,214),(547,214),(549,214),(550,214),(551,214),(552,214),(553,214),(555,214),(556,214),(557,214),(558,214),(559,214),(561,214),(562,214),(563,214),(564,214),(565,214),(567,214),(569,214),(570,214),(571,214),(572,214),(573,214),(575,214),(576,214),(577,214),(578,214),(579,214),(581,214),(583,214),(584,214),(585,214),(586,214),(587,214),(589,214),(590,214),(591,214),(592,214),(593,214),(595,214),(597,214),(598,214),(599,214),(600,214),(601,214),(603,214),(604,214),(605,214),(606,214),(607,214),(609,214),(610,214),(611,214),(612,214),(613,214),(615,214),(616,214),(617,214),(618,214),(619,214),(623,622),(625,622),(626,622),(627,622),(628,622),(629,622),(631,622),(633,622),(634,622),(635,622),(636,622),(637,622),(639,622),(640,622),(641,622),(642,622),(643,622),(645,622),(646,622),(647,622),(648,622),(649,622),(651,622),(652,622),(653,622),(654,622),(655,622),(657,622),(658,622),(659,622),(660,622),(661,622),(663,622),(664,622),(665,622),(666,622),(667,622),(669,622),(670,622),(671,622),(672,622),(673,622),(675,622),(677,622),(678,622),(679,622),(680,622),(681,622),(683,622),(684,622),(685,622),(686,622),(687,622),(689,622),(690,622),(691,622),(692,622),(693,622),(694,622),(696,622),(698,622),(699,622),(700,622),(701,622),(702,622),(704,622),(705,622),(706,622),(707,622),(708,622),(710,622),(711,622),(712,622),(713,622),(714,622),(716,622),(717,622),(718,622),(719,622),(720,622),(722,622),(723,622),(724,622),(725,622),(726,622),(728,622),(729,622),(730,622),(731,622),(732,622),(734,622),(736,622),(737,622),(738,622),(739,622),(740,622);
CREATE TABLE `connectsTo` (
  `TrackElement1_id` integer NOT NULL
,  `TrackElement2_id` integer NOT NULL
,  PRIMARY KEY (`TrackElement1_id`,`TrackElement2_id`)
);
INSERT INTO `connectsTo` VALUES (5,7),(7,8),(8,9),(9,10),(10,11),(11,12),(12,14),(14,15),(15,16),(16,17),(17,18),(18,20),(20,21),(21,22),(22,23),(23,24),(24,26),(26,27),(27,28),(28,29),(29,30),(30,32),(32,33),(33,34),(34,35),(35,36),(36,38),(38,39),(39,40),(40,41),(41,42),(42,44),(44,45),(45,46),(46,47),(47,48),(53,55),(55,56),(56,57),(57,58),(58,59),(59,61),(61,62),(62,63),(63,64),(64,65),(48,53),(70,72),(72,73),(73,74),(74,75),(75,76),(76,78),(78,79),(79,80),(80,81),(81,82),(82,84),(84,85),(85,86),(86,87),(87,88),(88,90),(90,91),(91,92),(92,93),(93,94),(94,96),(96,97),(97,98),(98,99),(99,100),(100,102),(102,103),(103,104),(104,105),(105,106),(106,108),(108,109),(109,110),(110,111),(111,112),(112,114),(114,116),(116,117),(117,118),(118,119),(119,120),(120,122),(122,123),(123,124),(124,125),(125,126),(126,127),(127,129),(129,130),(130,131),(131,132),(132,133),(133,134),(134,136),(136,138),(138,139),(139,140),(140,141),(141,142),(142,144),(144,145),(145,146),(146,147),(147,148),(148,150),(150,151),(151,152),(152,153),(153,154),(154,156),(156,157),(157,158),(158,159),(159,160),(160,162),(162,163),(163,164),(164,165),(165,166),(166,168),(168,169),(169,170),(170,171),(171,172),(172,174),(174,176),(176,177),(177,178),(178,179),(179,180),(180,182),(182,183),(183,184),(184,185),(185,186),(186,188),(188,189),(189,190),(190,191),(191,192),(192,194),(194,195),(195,196),(196,197),(197,198),(198,200),(200,201),(201,202),(202,203),(203,204),(204,206),(206,207),(207,208),(208,209),(209,210),(65,70),(215,217),(217,218),(218,219),(219,220),(220,221),(221,223),(223,224),(224,225),(225,226),(226,227),(227,229),(229,230),(230,231),(231,232),(232,233),(233,235),(235,236),(236,237),(237,238),(238,239),(239,241),(241,242),(242,243),(243,244),(244,245),(245,247),(247,248),(248,249),(249,250),(250,251),(251,253),(253,254),(254,255),(255,256),(256,257),(257,259),(259,260),(260,261),(261,262),(262,263),(263,265),(265,266),(266,267),(267,268),(268,269),(269,271),(271,273),(273,274),(274,275),(275,276),(276,277),(277,279),(279,280),(280,281),(281,282),(282,283),(283,285),(285,287),(287,288),(288,289),(289,290),(290,291),(291,293),(293,294),(294,295),(295,296),(296,297),(297,299),(299,300),(300,301),(301,302),(302,303),(303,305),(305,307),(307,308),(308,309),(309,310),(310,311),(311,313),(313,315),(315,316),(316,317),(317,318),(318,319),(319,321),(321,322),(322,323),(323,324),(324,325),(325,327),(327,328),(328,329),(329,330),(330,331),(331,333),(333,334),(334,335),(335,336),(336,337),(337,339),(339,341),(341,342),(342,343),(343,344),(344,345),(345,347),(347,348),(348,349),(349,350),(350,351),(351,353),(353,354),(354,355),(355,356),(356,357),(357,359),(359,361),(361,362),(362,363),(363,364),(364,365),(365,367),(367,368),(368,369),(369,370),(370,371),(371,373),(373,374),(374,375),(375,376),(376,377),(377,379),(379,380),(380,381),(381,382),(382,383),(383,385),(385,386),(386,387),(387,388),(388,389),(389,391),(391,392),(392,393),(393,394),(394,395),(395,397),(397,398),(398,399),(399,400),(400,401),(401,403),(403,405),(405,406),(406,407),(407,408),(408,409),(409,411),(411,412),(412,413),(413,414),(414,415),(415,417),(417,418),(418,419),(419,420),(420,421),(421,423),(423,424),(424,425),(425,426),(426,427),(427,429),(429,430),(430,431),(431,432),(432,433),(433,435),(435,436),(436,437),(437,438),(438,439),(439,441),(441,442),(442,443),(443,444),(444,445),(445,447),(447,448),(448,449),(449,450),(450,451),(451,453),(453,454),(454,455),(455,456),(456,457),(457,459),(459,461),(461,462),(462,463),(463,464),(464,465),(465,467),(467,468),(468,469),(469,470),(470,471),(471,473),(473,474),(474,475),(475,476),(476,477),(477,479),(479,480),(480,481),(481,482),(482,483),(483,485),(485,486),(486,487),(487,488),(488,489),(489,491),(491,492),(492,493),(493,494),(494,495),(495,497),(497,498),(498,499),(499,500),(500,501),(501,503),(503,504),(504,505),(505,506),(506,507),(507,509),(509,511),(511,512),(512,513),(513,514),(514,515),(515,517),(517,518),(518,519),(519,520),(520,521),(521,523),(523,524),(524,525),(525,526),(526,527),(527,529),(529,530),(530,531),(531,532),(532,533),(533,535),(535,537),(537,538),(538,539),(539,540),(540,541),(541,543),(543,544),(544,545),(545,546),(546,547),(547,549),(549,550),(550,551),(551,552),(552,553),(553,555),(555,556),(556,557),(557,558),(558,559),(559,561),(561,562),(562,563),(563,564),(564,565),(565,567),(567,569),(569,570),(570,571),(571,572),(572,573),(573,575),(575,576),(576,577),(577,578),(578,579),(579,581),(581,583),(583,584),(584,585),(585,586),(586,587),(587,589),(589,590),(590,591),(591,592),(592,593),(593,595),(595,597),(597,598),(598,599),(599,600),(600,601),(601,603),(603,604),(604,605),(605,606),(606,607),(607,609),(609,610),(610,611),(611,612),(612,613),(613,615),(615,616),(616,617),(617,618),(618,619),(210,215),(623,625),(625,626),(626,627),(627,628),(628,629),(629,631),(631,633),(633,634),(634,635),(635,636),(636,637),(637,639),(639,640),(640,641),(641,642),(642,643),(643,645),(645,646),(646,647),(647,648),(648,649),(649,651),(651,652),(652,653),(653,654),(654,655),(655,657),(657,658),(658,659),(659,660),(660,661),(661,663),(663,664),(664,665),(665,666),(666,667),(667,669),(669,670),(670,671),(671,672),(672,673),(673,675),(675,677),(677,678),(678,679),(679,680),(680,681),(681,683),(683,684),(684,685),(685,686),(686,687),(687,689),(689,690),(690,691),(691,692),(692,693),(693,694),(694,696),(696,698),(698,699),(699,700),(700,701),(701,702),(702,704),(704,705),(705,706),(706,707),(707,708),(708,710),(710,711),(711,712),(712,713),(713,714),(714,716),(716,717),(717,718),(718,719),(719,720),(720,722),(722,723),(723,724),(724,725),(725,726),(726,728),(728,729),(729,730),(730,731),(731,732),(732,734),(734,736),(736,737),(737,738),(738,739),(739,740),(619,623),(740,5);
CREATE TABLE `monitoredBy` (
  `TrackElement_id` integer NOT NULL
,  `Sensor_id` integer NOT NULL
,  PRIMARY KEY (`TrackElement_id`,`Sensor_id`)
);
INSERT INTO `monitoredBy` VALUES (5,6),(7,6),(8,6),(9,6),(10,6),(11,6),(12,6),(5,13),(14,13),(15,13),(16,13),(17,13),(18,13),(5,19),(20,19),(21,19),(22,19),(23,19),(24,19),(5,25),(26,25),(27,25),(28,25),(29,25),(30,25),(5,31),(32,31),(33,31),(34,31),(35,31),(36,31),(5,37),(38,37),(39,37),(40,37),(41,37),(42,37),(5,43),(44,43),(45,43),(46,43),(47,43),(48,43),(53,54),(55,54),(56,54),(57,54),(58,54),(59,54),(53,60),(61,60),(62,60),(63,60),(64,60),(65,60),(70,71),(72,71),(73,71),(74,71),(75,71),(76,71),(70,77),(78,77),(79,77),(80,77),(81,77),(82,77),(70,83),(84,83),(85,83),(86,83),(87,83),(88,83),(70,89),(90,89),(91,89),(92,89),(93,89),(94,89),(70,95),(96,95),(97,95),(98,95),(99,95),(100,95),(70,101),(102,101),(103,101),(104,101),(105,101),(106,101),(70,107),(108,107),(109,107),(110,107),(111,107),(112,107),(114,115),(116,115),(117,115),(118,115),(119,115),(120,115),(114,121),(122,121),(123,121),(124,121),(125,121),(126,121),(127,121),(114,128),(129,128),(130,128),(131,128),(132,128),(133,128),(134,128),(136,137),(138,137),(139,137),(140,137),(141,137),(142,137),(136,143),(144,143),(145,143),(146,143),(147,143),(148,143),(136,149),(150,149),(151,149),(152,149),(153,149),(154,149),(136,155),(156,155),(157,155),(158,155),(159,155),(160,155),(136,161),(162,161),(163,161),(164,161),(165,161),(166,161),(136,167),(168,167),(169,167),(170,167),(171,167),(172,167),(174,175),(176,175),(177,175),(178,175),(179,175),(180,175),(174,181),(182,181),(183,181),(184,181),(185,181),(186,181),(174,187),(188,187),(189,187),(190,187),(191,187),(192,187),(174,193),(194,193),(195,193),(196,193),(197,193),(198,193),(174,199),(200,199),(201,199),(202,199),(203,199),(204,199),(174,205),(206,205),(207,205),(208,205),(209,205),(210,205),(215,216),(217,216),(218,216),(219,216),(220,216),(221,216),(215,222),(223,222),(224,222),(225,222),(226,222),(227,222),(215,228),(229,228),(230,228),(231,228),(232,228),(233,228),(215,234),(235,234),(236,234),(237,234),(238,234),(239,234),(215,240),(241,240),(242,240),(243,240),(244,240),(245,240),(215,246),(247,246),(248,246),(249,246),(250,246),(251,246),(215,252),(253,252),(254,252),(255,252),(256,252),(257,252),(215,258),(259,258),(260,258),(261,258),(262,258),(263,258),(215,264),(265,264),(266,264),(267,264),(268,264),(269,264),(271,272),(273,272),(274,272),(275,272),(276,272),(277,272),(271,278),(279,278),(280,278),(281,278),(282,278),(283,278),(285,286),(287,286),(288,286),(289,286),(290,286),(291,286),(285,292),(293,292),(294,292),(295,292),(296,292),(297,292),(285,298),(299,298),(300,298),(301,298),(302,298),(303,298),(305,306),(307,306),(308,306),(309,306),(310,306),(311,306),(313,314),(315,314),(316,314),(317,314),(318,314),(319,314),(313,320),(321,320),(322,320),(323,320),(324,320),(325,320),(313,326),(327,326),(328,326),(329,326),(330,326),(331,326),(313,332),(333,332),(334,332),(335,332),(336,332),(337,332),(339,340),(341,340),(342,340),(343,340),(344,340),(345,340),(339,346),(347,346),(348,346),(349,346),(350,346),(351,346),(339,352),(353,352),(354,352),(355,352),(356,352),(357,352),(359,360),(361,360),(362,360),(363,360),(364,360),(365,360),(359,366),(367,366),(368,366),(369,366),(370,366),(371,366),(359,372),(373,372),(374,372),(375,372),(376,372),(377,372),(359,378),(379,378),(380,378),(381,378),(382,378),(383,378),(359,384),(385,384),(386,384),(387,384),(388,384),(389,384),(359,390),(391,390),(392,390),(393,390),(394,390),(395,390),(359,396),(397,396),(398,396),(399,396),(400,396),(401,396),(403,404),(405,404),(406,404),(407,404),(408,404),(409,404),(403,410),(411,410),(412,410),(413,410),(414,410),(415,410),(403,416),(417,416),(418,416),(419,416),(420,416),(421,416),(403,422),(423,422),(424,422),(425,422),(426,422),(427,422),(403,428),(429,428),(430,428),(431,428),(432,428),(433,428),(403,434),(435,434),(436,434),(437,434),(438,434),(439,434),(403,440),(441,440),(442,440),(443,440),(444,440),(445,440),(403,446),(447,446),(448,446),(449,446),(450,446),(451,446),(403,452),(453,452),(454,452),(455,452),(456,452),(457,452),(459,460),(461,460),(462,460),(463,460),(464,460),(465,460),(459,466),(467,466),(468,466),(469,466),(470,466),(471,466),(459,472),(473,472),(474,472),(475,472),(476,472),(477,472),(459,478),(479,478),(480,478),(481,478),(482,478),(483,478),(459,484),(485,484),(486,484),(487,484),(488,484),(489,484),(459,490),(491,490),(492,490),(493,490),(494,490),(495,490),(459,496),(497,496),(498,496),(499,496),(500,496),(501,496),(459,502),(503,502),(504,502),(505,502),(506,502),(507,502),(509,510),(511,510),(512,510),(513,510),(514,510),(515,510),(509,516),(517,516),(518,516),(519,516),(520,516),(521,516),(509,522),(523,522),(524,522),(525,522),(526,522),(527,522),(509,528),(529,528),(530,528),(531,528),(532,528),(533,528),(535,536),(537,536),(538,536),(539,536),(540,536),(541,536),(535,542),(543,542),(544,542),(545,542),(546,542),(547,542),(535,548),(549,548),(550,548),(551,548),(552,548),(553,548),(535,554),(555,554),(556,554),(557,554),(558,554),(559,554),(535,560),(561,560),(562,560),(563,560),(564,560),(565,560),(567,568),(569,568),(570,568),(571,568),(572,568),(573,568),(567,574),(575,574),(576,574),(577,574),(578,574),(579,574),(581,582),(583,582),(584,582),(585,582),(586,582),(587,582),(581,588),(589,588),(590,588),(591,588),(592,588),(593,588),(595,596),(597,596),(598,596),(599,596),(600,596),(601,596),(595,602),(603,602),(604,602),(605,602),(606,602),(607,602),(595,608),(609,608),(610,608),(611,608),(612,608),(613,608),(595,614),(615,614),(616,614),(617,614),(618,614),(619,614),(623,624),(625,624),(626,624),(627,624),(628,624),(629,624),(631,632),(633,632),(634,632),(635,632),(636,632),(637,632),(631,638),(639,638),(640,638),(641,638),(642,638),(643,638),(631,644),(645,644),(646,644),(647,644),(648,644),(649,644),(631,650),(651,650),(652,650),(653,650),(654,650),(655,650),(631,656),(657,656),(658,656),(659,656),(660,656),(661,656),(631,662),(663,662),(664,662),(665,662),(666,662),(667,662),(631,668),(669,668),(670,668),(671,668),(672,668),(673,668),(675,676),(677,676),(678,676),(679,676),(680,676),(681,676),(675,682),(683,682),(684,682),(685,682),(686,682),(687,682),(675,688),(689,688),(690,688),(691,688),(692,688),(693,688),(694,688),(696,697),(698,697),(699,697),(700,697),(701,697),(702,697),(696,703),(704,703),(705,703),(706,703),(707,703),(708,703),(696,709),(710,709),(711,709),(712,709),(713,709),(714,709),(696,715),(716,715),(717,715),(718,715),(719,715),(720,715),(696,721),(722,721),(723,721),(724,721),(725,721),(726,721),(696,727),(728,727),(729,727),(730,727),(731,727),(732,727),(734,735),(736,735),(737,735),(738,735),(739,735),(740,735);
CREATE TABLE `requires` (
  `Route_id` integer NOT NULL
,  `Sensor_id` integer NOT NULL
,  PRIMARY KEY (`Route_id`,`Sensor_id`)
);
INSERT INTO `requires` VALUES (3,6),(3,13),(3,19),(3,25),(3,31),(3,37),(3,43),(51,54),(51,60),(68,71),(68,77),(68,83),(68,89),(68,95),(68,107),(68,115),(68,121),(68,128),(68,137),(68,143),(68,149),(68,155),(68,161),(68,175),(68,181),(68,187),(68,193),(68,199),(68,205),(213,216),(213,222),(213,228),(213,234),(213,240),(213,246),(213,252),(213,258),(213,264),(213,272),(213,278),(213,286),(213,292),(213,298),(213,306),(213,314),(213,320),(213,326),(213,332),(213,340),(213,346),(213,352),(213,360),(213,366),(213,378),(213,384),(213,390),(213,396),(213,404),(213,410),(213,416),(213,422),(213,428),(213,434),(213,440),(213,446),(213,452),(213,466),(213,472),(213,484),(213,490),(213,496),(213,502),(213,510),(213,516),(213,522),(213,528),(213,536),(213,548),(213,554),(213,560),(213,568),(213,574),(213,582),(213,596),(213,602),(213,608),(213,614),(621,624),(621,632),(621,638),(621,644),(621,650),(621,656),(621,662),(621,668),(621,676),(621,682),(621,688),(621,697),(621,703),(621,709),(621,715),(621,721),(621,727),(621,735);
CREATE INDEX "idx_connectsTo_connectsTo_idx1" ON "connectsTo" (`TrackElement1_id`);
CREATE INDEX "idx_connectsTo_connectsTo_idx2" ON "connectsTo" (`TrackElement2_id`);
CREATE INDEX "idx_Route_route_active_idx" ON "Route" (`active`);
CREATE INDEX "idx_Semaphore_semaphore_signal_idx" ON "Semaphore" (`signal`);
CREATE INDEX "idx_Segment_segment_length_idx" ON "Segment" (`length`);
CREATE INDEX "idx_monitoredBy_monitoredBy_idx" ON "monitoredBy" (`Sensor_id`,`TrackElement_id`);
END TRANSACTION;
