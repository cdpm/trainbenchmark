PRAGMA synchronous = OFF;
PRAGMA journal_mode = MEMORY;
BEGIN TRANSACTION;
CREATE TABLE `Region` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
);
INSERT INTO `Region` VALUES (4),(51),(68),(211),(619);
CREATE TABLE `Route` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `active` integer DEFAULT NULL
,  `entry` integer DEFAULT NULL
,  `exit` integer DEFAULT NULL
);
INSERT INTO `Route` VALUES (3,1,1,2),(50,1,2,49),(67,1,49,66),(210,1,66,209),(618,1,209,1);
CREATE TABLE `Segment` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `length` integer NOT NULL DEFAULT '1'
);
INSERT INTO `Segment` VALUES (7,504),(8,776),(9,60),(10,808),(11,576),(13,358),(14,335),(15,461),(16,439),(17,879),(19,90),(20,829),(21,395),(22,732),(23,134),(25,857),(26,376),(27,803),(28,505),(29,137),(31,294),(32,494),(33,306),(34,979),(35,597),(37,815),(38,396),(39,813),(40,518),(41,831),(43,730),(44,127),(45,968),(46,974),(47,197),(54,324),(55,324),(56,996),(57,645),(58,455),(60,517),(61,582),(62,641),(63,683),(64,639),(71,212),(72,852),(73,994),(74,931),(75,472),(77,367),(78,679),(79,180),(80,745),(81,629),(83,711),(84,633),(85,733),(86,542),(87,449),(89,655),(90,549),(91,988),(92,567),(93,483),(95,234),(96,636),(97,132),(98,849),(99,421),(101,345),(102,429),(103,771),(104,892),(105,387),(107,149),(108,313),(109,209),(110,814),(111,721),(115,26),(116,436),(117,99),(118,818),(119,853),(121,153),(122,560),(123,872),(124,190),(125,340),(127,764),(128,35),(129,872),(130,193),(131,515),(135,141),(136,11),(137,288),(138,994),(139,852),(141,715),(142,933),(143,232),(144,692),(145,901),(147,590),(148,530),(149,896),(150,494),(151,325),(153,273),(154,800),(155,137),(156,813),(157,137),(159,975),(160,53),(161,386),(162,633),(163,220),(165,697),(166,929),(167,586),(168,152),(169,45),(173,886),(174,85),(175,23),(176,246),(177,245),(179,246),(180,239),(181,437),(182,544),(183,375),(185,398),(186,942),(187,191),(188,18),(189,1000),(191,488),(192,301),(193,559),(194,437),(195,997),(197,511),(198,494),(199,625),(200,23),(201,111),(203,578),(204,757),(205,893),(206,711),(207,227),(214,740),(215,145),(216,242),(217,789),(218,840),(220,456),(221,284),(222,434),(223,546),(224,613),(226,977),(227,801),(228,824),(229,386),(230,395),(232,769),(233,608),(234,380),(235,829),(236,230),(238,619),(239,609),(240,620),(241,486),(242,181),(244,921),(245,54),(246,329),(247,745),(248,703),(250,322),(251,763),(252,369),(253,890),(254,591),(256,736),(257,547),(258,836),(259,257),(260,746),(262,488),(263,830),(264,366),(265,754),(266,638),(270,214),(271,102),(272,985),(273,517),(274,302),(276,785),(277,593),(278,566),(279,570),(280,386),(284,949),(285,462),(286,158),(287,657),(288,697),(290,931),(291,225),(292,119),(293,999),(294,342),(296,490),(297,986),(298,392),(299,798),(300,782),(304,480),(305,212),(306,214),(307,907),(308,617),(312,118),(313,772),(314,533),(315,981),(316,510),(318,186),(319,298),(320,324),(321,372),(322,881),(324,219),(325,740),(326,822),(327,897),(328,521),(330,685),(331,750),(332,630),(333,250),(334,809),(338,579),(339,77),(340,39),(341,719),(342,91),(344,796),(345,963),(346,894),(347,802),(348,951),(350,402),(351,718),(352,337),(353,942),(354,59),(358,547),(359,686),(360,836),(361,212),(362,579),(364,403),(365,218),(366,616),(367,191),(368,870),(370,610),(371,344),(372,374),(373,333),(374,792),(376,923),(377,100),(378,627),(379,258),(380,699),(382,889),(383,11),(384,465),(385,14),(386,470),(388,232),(389,343),(390,605),(391,771),(392,799),(394,288),(395,333),(396,964),(397,994),(398,518),(402,167),(403,90),(404,466),(405,52),(406,886),(408,685),(409,248),(410,404),(411,261),(412,111),(414,408),(415,852),(416,610),(417,36),(418,514),(420,458),(421,883),(422,918),(423,270),(424,345),(426,684),(427,820),(428,156),(429,428),(430,754),(432,714),(433,901),(434,735),(435,534),(436,372),(438,49),(439,917),(440,369),(441,373),(442,94),(444,507),(445,737),(446,348),(447,433),(448,411),(450,149),(451,541),(452,773),(453,278),(454,75),(458,70),(459,565),(460,809),(461,883),(462,160),(464,415),(465,744),(466,136),(467,461),(468,640),(470,224),(471,267),(472,857),(473,94),(474,933),(476,627),(477,976),(478,773),(479,644),(480,493),(482,519),(483,273),(484,643),(485,699),(486,207),(488,293),(489,157),(490,60),(491,620),(492,718),(494,905),(495,553),(496,453),(497,536),(498,322),(500,783),(501,524),(502,283),(503,82),(504,574),(508,36),(509,464),(510,263),(511,717),(512,970),(514,150),(515,39),(516,159),(517,83),(518,683),(520,632),(521,806),(522,453),(523,777),(524,904),(526,546),(527,371),(528,352),(529,227),(530,742),(534,208),(535,177),(536,611),(537,576),(538,605),(540,326),(541,386),(542,531),(543,781),(544,652),(546,83),(547,27),(548,973),(549,42),(550,918),(552,772),(553,185),(554,817),(555,850),(556,503),(558,314),(559,847),(560,300),(561,121),(562,51),(566,977),(567,270),(568,130),(569,195),(570,69),(572,899),(573,47),(574,373),(575,521),(576,423),(580,21),(581,450),(582,820),(583,372),(584,291),(586,993),(587,95),(588,455),(589,522),(590,325),(594,984),(595,536),(596,460),(597,108),(598,691),(600,176),(601,822),(602,759),(603,348),(604,61),(606,827),(607,917),(608,749),(609,569),(610,934),(612,971),(613,904),(614,593),(615,571),(616,358),(622,787),(623,673),(624,35),(625,969),(626,718),(630,421),(631,307),(632,514),(633,161),(634,530),(636,1000),(637,686),(638,534),(639,858),(640,520),(642,909),(643,664),(644,750),(645,944),(646,200),(648,895),(649,79),(650,214),(651,135),(652,345),(654,493),(655,922),(656,943),(657,639),(658,168),(660,758),(661,432),(662,89),(663,589),(664,135),(666,533),(667,735),(668,632),(669,342),(670,469),(674,29),(675,576),(676,320),(677,78),(678,225),(680,56),(681,966),(682,161),(683,517),(684,145),(686,778),(687,904),(688,467),(689,53),(690,367),(694,916),(695,522),(696,182),(697,579),(698,972),(700,940),(701,349),(702,900),(703,695),(704,449),(706,223),(707,51),(708,163),(709,332),(710,81),(712,282),(713,510),(714,983),(715,941),(716,78),(718,777),(719,229),(720,997),(721,137),(722,596),(724,916),(725,331),(726,407),(727,500),(728,54),(732,683),(733,50),(734,633),(735,578),(736,456);
CREATE TABLE `Semaphore` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `segment` integer NOT NULL
,  `signal` integer NOT NULL
);
INSERT INTO `Semaphore` VALUES (1,622,2),(2,7,2),(49,54,2),(66,71,2),(209,214,2);
CREATE TABLE `Sensor` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `region` integer NOT NULL
);
INSERT INTO `Sensor` VALUES (6,4),(12,4),(18,4),(24,4),(30,4),(36,4),(42,4),(53,51),(59,51),(70,68),(76,68),(82,68),(88,68),(94,68),(100,68),(106,68),(114,68),(120,68),(126,68),(134,68),(140,68),(146,68),(152,68),(158,68),(164,68),(172,68),(178,68),(184,68),(190,68),(196,68),(202,68),(213,211),(219,211),(225,211),(231,211),(237,211),(243,211),(249,211),(255,211),(261,211),(269,211),(275,211),(283,211),(289,211),(295,211),(303,211),(311,211),(317,211),(323,211),(329,211),(337,211),(343,211),(349,211),(357,211),(363,211),(369,211),(375,211),(381,211),(387,211),(393,211),(401,211),(407,211),(413,211),(419,211),(425,211),(431,211),(437,211),(443,211),(449,211),(457,211),(463,211),(469,211),(475,211),(481,211),(487,211),(493,211),(499,211),(507,211),(513,211),(519,211),(525,211),(533,211),(539,211),(545,211),(551,211),(557,211),(565,211),(571,211),(579,211),(585,211),(593,211),(599,211),(605,211),(611,211),(621,619),(629,619),(635,619),(641,619),(647,619),(653,619),(659,619),(665,619),(673,619),(679,619),(685,619),(693,619),(699,619),(705,619),(711,619),(717,619),(723,619),(731,619);
CREATE TABLE `Switch` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `currentPosition` integer NOT NULL
);
INSERT INTO `Switch` VALUES (5,0),(52,1),(69,0),(113,2),(133,2),(171,2),(212,2),(268,1),(282,2),(302,0),(310,0),(336,2),(356,0),(400,2),(456,1),(506,0),(532,1),(564,1),(578,1),(592,0),(620,0),(628,0),(672,2),(692,2),(730,0);
CREATE TABLE `SwitchPosition` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `route` integer DEFAULT NULL
,  `target` integer DEFAULT NULL
,  `position` integer NOT NULL
);
INSERT INTO `SwitchPosition` VALUES (48,3,5,0),(65,50,52,1),(112,67,69,0),(132,67,113,2),(170,67,133,2),(208,67,171,2),(267,210,212,2),(281,210,268,1),(301,210,282,2),(309,210,302,0),(335,210,310,0),(355,210,336,2),(399,210,356,0),(455,210,400,2),(505,210,456,1),(531,210,506,0),(563,210,532,1),(577,210,564,1),(591,210,578,1),(617,210,592,0),(627,618,620,0),(671,618,628,0),(691,618,672,2),(729,618,692,2),(737,618,730,0);
CREATE TABLE `TrackElement` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `region` integer NOT NULL
);
INSERT INTO `TrackElement` VALUES (5,4),(7,4),(8,4),(9,4),(10,4),(11,4),(13,4),(14,4),(15,4),(16,4),(17,4),(19,4),(20,4),(21,4),(22,4),(23,4),(25,4),(26,4),(27,4),(28,4),(29,4),(31,4),(32,4),(33,4),(34,4),(35,4),(37,4),(38,4),(39,4),(40,4),(41,4),(43,4),(44,4),(45,4),(46,4),(47,4),(52,51),(54,51),(55,51),(56,51),(57,51),(58,51),(60,51),(61,51),(62,51),(63,51),(64,51),(69,68),(71,68),(72,68),(73,68),(74,68),(75,68),(77,68),(78,68),(79,68),(80,68),(81,68),(83,68),(84,68),(85,68),(86,68),(87,68),(89,68),(90,68),(91,68),(92,68),(93,68),(95,68),(96,68),(97,68),(98,68),(99,68),(101,68),(102,68),(103,68),(104,68),(105,68),(107,68),(108,68),(109,68),(110,68),(111,68),(113,68),(115,68),(116,68),(117,68),(118,68),(119,68),(121,68),(122,68),(123,68),(124,68),(125,68),(127,68),(128,68),(129,68),(130,68),(131,68),(133,68),(135,68),(136,68),(137,68),(138,68),(139,68),(141,68),(142,68),(143,68),(144,68),(145,68),(147,68),(148,68),(149,68),(150,68),(151,68),(153,68),(154,68),(155,68),(156,68),(157,68),(159,68),(160,68),(161,68),(162,68),(163,68),(165,68),(166,68),(167,68),(168,68),(169,68),(171,68),(173,68),(174,68),(175,68),(176,68),(177,68),(179,68),(180,68),(181,68),(182,68),(183,68),(185,68),(186,68),(187,68),(188,68),(189,68),(191,68),(192,68),(193,68),(194,68),(195,68),(197,68),(198,68),(199,68),(200,68),(201,68),(203,68),(204,68),(205,68),(206,68),(207,68),(212,211),(214,211),(215,211),(216,211),(217,211),(218,211),(220,211),(221,211),(222,211),(223,211),(224,211),(226,211),(227,211),(228,211),(229,211),(230,211),(232,211),(233,211),(234,211),(235,211),(236,211),(238,211),(239,211),(240,211),(241,211),(242,211),(244,211),(245,211),(246,211),(247,211),(248,211),(250,211),(251,211),(252,211),(253,211),(254,211),(256,211),(257,211),(258,211),(259,211),(260,211),(262,211),(263,211),(264,211),(265,211),(266,211),(268,211),(270,211),(271,211),(272,211),(273,211),(274,211),(276,211),(277,211),(278,211),(279,211),(280,211),(282,211),(284,211),(285,211),(286,211),(287,211),(288,211),(290,211),(291,211),(292,211),(293,211),(294,211),(296,211),(297,211),(298,211),(299,211),(300,211),(302,211),(304,211),(305,211),(306,211),(307,211),(308,211),(310,211),(312,211),(313,211),(314,211),(315,211),(316,211),(318,211),(319,211),(320,211),(321,211),(322,211),(324,211),(325,211),(326,211),(327,211),(328,211),(330,211),(331,211),(332,211),(333,211),(334,211),(336,211),(338,211),(339,211),(340,211),(341,211),(342,211),(344,211),(345,211),(346,211),(347,211),(348,211),(350,211),(351,211),(352,211),(353,211),(354,211),(356,211),(358,211),(359,211),(360,211),(361,211),(362,211),(364,211),(365,211),(366,211),(367,211),(368,211),(370,211),(371,211),(372,211),(373,211),(374,211),(376,211),(377,211),(378,211),(379,211),(380,211),(382,211),(383,211),(384,211),(385,211),(386,211),(388,211),(389,211),(390,211),(391,211),(392,211),(394,211),(395,211),(396,211),(397,211),(398,211),(400,211),(402,211),(403,211),(404,211),(405,211),(406,211),(408,211),(409,211),(410,211),(411,211),(412,211),(414,211),(415,211),(416,211),(417,211),(418,211),(420,211),(421,211),(422,211),(423,211),(424,211),(426,211),(427,211),(428,211),(429,211),(430,211),(432,211),(433,211),(434,211),(435,211),(436,211),(438,211),(439,211),(440,211),(441,211),(442,211),(444,211),(445,211),(446,211),(447,211),(448,211),(450,211),(451,211),(452,211),(453,211),(454,211),(456,211),(458,211),(459,211),(460,211),(461,211),(462,211),(464,211),(465,211),(466,211),(467,211),(468,211),(470,211),(471,211),(472,211),(473,211),(474,211),(476,211),(477,211),(478,211),(479,211),(480,211),(482,211),(483,211),(484,211),(485,211),(486,211),(488,211),(489,211),(490,211),(491,211),(492,211),(494,211),(495,211),(496,211),(497,211),(498,211),(500,211),(501,211),(502,211),(503,211),(504,211),(506,211),(508,211),(509,211),(510,211),(511,211),(512,211),(514,211),(515,211),(516,211),(517,211),(518,211),(520,211),(521,211),(522,211),(523,211),(524,211),(526,211),(527,211),(528,211),(529,211),(530,211),(532,211),(534,211),(535,211),(536,211),(537,211),(538,211),(540,211),(541,211),(542,211),(543,211),(544,211),(546,211),(547,211),(548,211),(549,211),(550,211),(552,211),(553,211),(554,211),(555,211),(556,211),(558,211),(559,211),(560,211),(561,211),(562,211),(564,211),(566,211),(567,211),(568,211),(569,211),(570,211),(572,211),(573,211),(574,211),(575,211),(576,211),(578,211),(580,211),(581,211),(582,211),(583,211),(584,211),(586,211),(587,211),(588,211),(589,211),(590,211),(592,211),(594,211),(595,211),(596,211),(597,211),(598,211),(600,211),(601,211),(602,211),(603,211),(604,211),(606,211),(607,211),(608,211),(609,211),(610,211),(612,211),(613,211),(614,211),(615,211),(616,211),(620,619),(622,619),(623,619),(624,619),(625,619),(626,619),(628,619),(630,619),(631,619),(632,619),(633,619),(634,619),(636,619),(637,619),(638,619),(639,619),(640,619),(642,619),(643,619),(644,619),(645,619),(646,619),(648,619),(649,619),(650,619),(651,619),(652,619),(654,619),(655,619),(656,619),(657,619),(658,619),(660,619),(661,619),(662,619),(663,619),(664,619),(666,619),(667,619),(668,619),(669,619),(670,619),(672,619),(674,619),(675,619),(676,619),(677,619),(678,619),(680,619),(681,619),(682,619),(683,619),(684,619),(686,619),(687,619),(688,619),(689,619),(690,619),(692,619),(694,619),(695,619),(696,619),(697,619),(698,619),(700,619),(701,619),(702,619),(703,619),(704,619),(706,619),(707,619),(708,619),(709,619),(710,619),(712,619),(713,619),(714,619),(715,619),(716,619),(718,619),(719,619),(720,619),(721,619),(722,619),(724,619),(725,619),(726,619),(727,619),(728,619),(730,619),(732,619),(733,619),(734,619),(735,619),(736,619);
CREATE TABLE `connectsTo` (
  `TrackElement1_id` integer NOT NULL
,  `TrackElement2_id` integer NOT NULL
,  PRIMARY KEY (`TrackElement1_id`,`TrackElement2_id`)
);
INSERT INTO `connectsTo` VALUES (5,7),(7,8),(8,9),(9,10),(10,11),(11,13),(13,14),(14,15),(15,16),(16,17),(17,19),(19,20),(20,21),(21,22),(22,23),(23,25),(25,26),(26,27),(27,28),(28,29),(29,31),(31,32),(32,33),(33,34),(34,35),(35,37),(37,38),(38,39),(39,40),(40,41),(41,43),(43,44),(44,45),(45,46),(46,47),(52,54),(54,55),(55,56),(56,57),(57,58),(58,60),(60,61),(61,62),(62,63),(63,64),(47,52),(69,71),(71,72),(72,73),(73,74),(74,75),(75,77),(77,78),(78,79),(79,80),(80,81),(81,83),(83,84),(84,85),(85,86),(86,87),(87,89),(89,90),(90,91),(91,92),(92,93),(93,95),(95,96),(96,97),(97,98),(98,99),(99,101),(101,102),(102,103),(103,104),(104,105),(105,107),(107,108),(108,109),(109,110),(110,111),(111,113),(113,115),(115,116),(116,117),(117,118),(118,119),(119,121),(121,122),(122,123),(123,124),(124,125),(125,127),(127,128),(128,129),(129,130),(130,131),(131,133),(133,135),(135,136),(136,137),(137,138),(138,139),(139,141),(141,142),(142,143),(143,144),(144,145),(145,147),(147,148),(148,149),(149,150),(150,151),(151,153),(153,154),(154,155),(155,156),(156,157),(157,159),(159,160),(160,161),(161,162),(162,163),(163,165),(165,166),(166,167),(167,168),(168,169),(169,171),(171,173),(173,174),(174,175),(175,176),(176,177),(177,179),(179,180),(180,181),(181,182),(182,183),(183,185),(185,186),(186,187),(187,188),(188,189),(189,191),(191,192),(192,193),(193,194),(194,195),(195,197),(197,198),(198,199),(199,200),(200,201),(201,203),(203,204),(204,205),(205,206),(206,207),(64,69),(212,214),(214,215),(215,216),(216,217),(217,218),(218,220),(220,221),(221,222),(222,223),(223,224),(224,226),(226,227),(227,228),(228,229),(229,230),(230,232),(232,233),(233,234),(234,235),(235,236),(236,238),(238,239),(239,240),(240,241),(241,242),(242,244),(244,245),(245,246),(246,247),(247,248),(248,250),(250,251),(251,252),(252,253),(253,254),(254,256),(256,257),(257,258),(258,259),(259,260),(260,262),(262,263),(263,264),(264,265),(265,266),(266,268),(268,270),(270,271),(271,272),(272,273),(273,274),(274,276),(276,277),(277,278),(278,279),(279,280),(280,282),(282,284),(284,285),(285,286),(286,287),(287,288),(288,290),(290,291),(291,292),(292,293),(293,294),(294,296),(296,297),(297,298),(298,299),(299,300),(300,302),(302,304),(304,305),(305,306),(306,307),(307,308),(308,310),(310,312),(312,313),(313,314),(314,315),(315,316),(316,318),(318,319),(319,320),(320,321),(321,322),(322,324),(324,325),(325,326),(326,327),(327,328),(328,330),(330,331),(331,332),(332,333),(333,334),(334,336),(336,338),(338,339),(339,340),(340,341),(341,342),(342,344),(344,345),(345,346),(346,347),(347,348),(348,350),(350,351),(351,352),(352,353),(353,354),(354,356),(356,358),(358,359),(359,360),(360,361),(361,362),(362,364),(364,365),(365,366),(366,367),(367,368),(368,370),(370,371),(371,372),(372,373),(373,374),(374,376),(376,377),(377,378),(378,379),(379,380),(380,382),(382,383),(383,384),(384,385),(385,386),(386,388),(388,389),(389,390),(390,391),(391,392),(392,394),(394,395),(395,396),(396,397),(397,398),(398,400),(400,402),(402,403),(403,404),(404,405),(405,406),(406,408),(408,409),(409,410),(410,411),(411,412),(412,414),(414,415),(415,416),(416,417),(417,418),(418,420),(420,421),(421,422),(422,423),(423,424),(424,426),(426,427),(427,428),(428,429),(429,430),(430,432),(432,433),(433,434),(434,435),(435,436),(436,438),(438,439),(439,440),(440,441),(441,442),(442,444),(444,445),(445,446),(446,447),(447,448),(448,450),(450,451),(451,452),(452,453),(453,454),(454,456),(456,458),(458,459),(459,460),(460,461),(461,462),(462,464),(464,465),(465,466),(466,467),(467,468),(468,470),(470,471),(471,472),(472,473),(473,474),(474,476),(476,477),(477,478),(478,479),(479,480),(480,482),(482,483),(483,484),(484,485),(485,486),(486,488),(488,489),(489,490),(490,491),(491,492),(492,494),(494,495),(495,496),(496,497),(497,498),(498,500),(500,501),(501,502),(502,503),(503,504),(504,506),(506,508),(508,509),(509,510),(510,511),(511,512),(512,514),(514,515),(515,516),(516,517),(517,518),(518,520),(520,521),(521,522),(522,523),(523,524),(524,526),(526,527),(527,528),(528,529),(529,530),(530,532),(532,534),(534,535),(535,536),(536,537),(537,538),(538,540),(540,541),(541,542),(542,543),(543,544),(544,546),(546,547),(547,548),(548,549),(549,550),(550,552),(552,553),(553,554),(554,555),(555,556),(556,558),(558,559),(559,560),(560,561),(561,562),(562,564),(564,566),(566,567),(567,568),(568,569),(569,570),(570,572),(572,573),(573,574),(574,575),(575,576),(576,578),(578,580),(580,581),(581,582),(582,583),(583,584),(584,586),(586,587),(587,588),(588,589),(589,590),(590,592),(592,594),(594,595),(595,596),(596,597),(597,598),(598,600),(600,601),(601,602),(602,603),(603,604),(604,606),(606,607),(607,608),(608,609),(609,610),(610,612),(612,613),(613,614),(614,615),(615,616),(207,212),(620,622),(622,623),(623,624),(624,625),(625,626),(626,628),(628,630),(630,631),(631,632),(632,633),(633,634),(634,636),(636,637),(637,638),(638,639),(639,640),(640,642),(642,643),(643,644),(644,645),(645,646),(646,648),(648,649),(649,650),(650,651),(651,652),(652,654),(654,655),(655,656),(656,657),(657,658),(658,660),(660,661),(661,662),(662,663),(663,664),(664,666),(666,667),(667,668),(668,669),(669,670),(670,672),(672,674),(674,675),(675,676),(676,677),(677,678),(678,680),(680,681),(681,682),(682,683),(683,684),(684,686),(686,687),(687,688),(688,689),(689,690),(690,692),(692,694),(694,695),(695,696),(696,697),(697,698),(698,700),(700,701),(701,702),(702,703),(703,704),(704,706),(706,707),(707,708),(708,709),(709,710),(710,712),(712,713),(713,714),(714,715),(715,716),(716,718),(718,719),(719,720),(720,721),(721,722),(722,724),(724,725),(725,726),(726,727),(727,728),(728,730),(730,732),(732,733),(733,734),(734,735),(735,736),(616,620),(736,5);
CREATE TABLE `monitoredBy` (
  `TrackElement_id` integer NOT NULL
,  `Sensor_id` integer NOT NULL
,  PRIMARY KEY (`TrackElement_id`,`Sensor_id`)
);
INSERT INTO `monitoredBy` VALUES (5,6),(7,6),(8,6),(9,6),(10,6),(11,6),(5,12),(13,12),(14,12),(15,12),(16,12),(17,12),(5,18),(19,18),(20,18),(21,18),(22,18),(23,18),(5,24),(25,24),(26,24),(27,24),(28,24),(29,24),(5,30),(31,30),(32,30),(33,30),(34,30),(35,30),(5,36),(37,36),(38,36),(39,36),(40,36),(41,36),(5,42),(43,42),(44,42),(45,42),(46,42),(47,42),(52,53),(54,53),(55,53),(56,53),(57,53),(58,53),(52,59),(60,59),(61,59),(62,59),(63,59),(64,59),(69,70),(71,70),(72,70),(73,70),(74,70),(75,70),(69,76),(77,76),(78,76),(79,76),(80,76),(81,76),(69,82),(83,82),(84,82),(85,82),(86,82),(87,82),(69,88),(89,88),(90,88),(91,88),(92,88),(93,88),(69,94),(95,94),(96,94),(97,94),(98,94),(99,94),(69,100),(101,100),(102,100),(103,100),(104,100),(105,100),(69,106),(107,106),(108,106),(109,106),(110,106),(111,106),(113,114),(115,114),(116,114),(117,114),(118,114),(119,114),(113,120),(121,120),(122,120),(123,120),(124,120),(125,120),(113,126),(127,126),(128,126),(129,126),(130,126),(131,126),(133,134),(135,134),(136,134),(137,134),(138,134),(139,134),(133,140),(141,140),(142,140),(143,140),(144,140),(145,140),(133,146),(147,146),(148,146),(149,146),(150,146),(151,146),(133,152),(153,152),(154,152),(155,152),(156,152),(157,152),(133,158),(159,158),(160,158),(161,158),(162,158),(163,158),(133,164),(165,164),(166,164),(167,164),(168,164),(169,164),(171,172),(173,172),(174,172),(175,172),(176,172),(177,172),(171,178),(179,178),(180,178),(181,178),(182,178),(183,178),(171,184),(185,184),(186,184),(187,184),(188,184),(189,184),(171,190),(191,190),(192,190),(193,190),(194,190),(195,190),(171,196),(197,196),(198,196),(199,196),(200,196),(201,196),(171,202),(203,202),(204,202),(205,202),(206,202),(207,202),(212,213),(214,213),(215,213),(216,213),(217,213),(218,213),(212,219),(220,219),(221,219),(222,219),(223,219),(224,219),(212,225),(226,225),(227,225),(228,225),(229,225),(230,225),(212,231),(232,231),(233,231),(234,231),(235,231),(236,231),(212,237),(238,237),(239,237),(240,237),(241,237),(242,237),(212,243),(244,243),(245,243),(246,243),(247,243),(248,243),(212,249),(250,249),(251,249),(252,249),(253,249),(254,249),(212,255),(256,255),(257,255),(258,255),(259,255),(260,255),(212,261),(262,261),(263,261),(264,261),(265,261),(266,261),(268,269),(270,269),(271,269),(272,269),(273,269),(274,269),(268,275),(276,275),(277,275),(278,275),(279,275),(280,275),(282,283),(284,283),(285,283),(286,283),(287,283),(288,283),(282,289),(290,289),(291,289),(292,289),(293,289),(294,289),(282,295),(296,295),(297,295),(298,295),(299,295),(300,295),(302,303),(304,303),(305,303),(306,303),(307,303),(308,303),(310,311),(312,311),(313,311),(314,311),(315,311),(316,311),(310,317),(318,317),(319,317),(320,317),(321,317),(322,317),(310,323),(324,323),(325,323),(326,323),(327,323),(328,323),(310,329),(330,329),(331,329),(332,329),(333,329),(334,329),(336,337),(338,337),(339,337),(340,337),(341,337),(342,337),(336,343),(344,343),(345,343),(346,343),(347,343),(348,343),(336,349),(350,349),(351,349),(352,349),(353,349),(354,349),(356,357),(358,357),(359,357),(360,357),(361,357),(362,357),(356,363),(364,363),(365,363),(366,363),(367,363),(368,363),(356,369),(370,369),(371,369),(372,369),(373,369),(374,369),(356,375),(376,375),(377,375),(378,375),(379,375),(380,375),(356,381),(382,381),(383,381),(384,381),(385,381),(386,381),(356,387),(388,387),(389,387),(390,387),(391,387),(392,387),(356,393),(394,393),(395,393),(396,393),(397,393),(398,393),(400,401),(402,401),(403,401),(404,401),(405,401),(406,401),(400,407),(408,407),(409,407),(410,407),(411,407),(412,407),(400,413),(414,413),(415,413),(416,413),(417,413),(418,413),(400,419),(420,419),(421,419),(422,419),(423,419),(424,419),(400,425),(426,425),(427,425),(428,425),(429,425),(430,425),(400,431),(432,431),(433,431),(434,431),(435,431),(436,431),(400,437),(438,437),(439,437),(440,437),(441,437),(442,437),(400,443),(444,443),(445,443),(446,443),(447,443),(448,443),(400,449),(450,449),(451,449),(452,449),(453,449),(454,449),(456,457),(458,457),(459,457),(460,457),(461,457),(462,457),(456,463),(464,463),(465,463),(466,463),(467,463),(468,463),(456,469),(470,469),(471,469),(472,469),(473,469),(474,469),(456,475),(476,475),(477,475),(478,475),(479,475),(480,475),(456,481),(482,481),(483,481),(484,481),(485,481),(486,481),(456,487),(488,487),(489,487),(490,487),(491,487),(492,487),(456,493),(494,493),(495,493),(496,493),(497,493),(498,493),(456,499),(500,499),(501,499),(502,499),(503,499),(504,499),(506,507),(508,507),(509,507),(510,507),(511,507),(512,507),(506,513),(514,513),(515,513),(516,513),(517,513),(518,513),(506,519),(520,519),(521,519),(522,519),(523,519),(524,519),(506,525),(526,525),(527,525),(528,525),(529,525),(530,525),(532,533),(534,533),(535,533),(536,533),(537,533),(538,533),(532,539),(540,539),(541,539),(542,539),(543,539),(544,539),(532,545),(546,545),(547,545),(548,545),(549,545),(550,545),(532,551),(552,551),(553,551),(554,551),(555,551),(556,551),(532,557),(558,557),(559,557),(560,557),(561,557),(562,557),(564,565),(566,565),(567,565),(568,565),(569,565),(570,565),(564,571),(572,571),(573,571),(574,571),(575,571),(576,571),(578,579),(580,579),(581,579),(582,579),(583,579),(584,579),(578,585),(586,585),(587,585),(588,585),(589,585),(590,585),(592,593),(594,593),(595,593),(596,593),(597,593),(598,593),(592,599),(600,599),(601,599),(602,599),(603,599),(604,599),(592,605),(606,605),(607,605),(608,605),(609,605),(610,605),(592,611),(612,611),(613,611),(614,611),(615,611),(616,611),(620,621),(622,621),(623,621),(624,621),(625,621),(626,621),(628,629),(630,629),(631,629),(632,629),(633,629),(634,629),(628,635),(636,635),(637,635),(638,635),(639,635),(640,635),(628,641),(642,641),(643,641),(644,641),(645,641),(646,641),(628,647),(648,647),(649,647),(650,647),(651,647),(652,647),(628,653),(654,653),(655,653),(656,653),(657,653),(658,653),(628,659),(660,659),(661,659),(662,659),(663,659),(664,659),(628,665),(666,665),(667,665),(668,665),(669,665),(670,665),(672,673),(674,673),(675,673),(676,673),(677,673),(678,673),(672,679),(680,679),(681,679),(682,679),(683,679),(684,679),(672,685),(686,685),(687,685),(688,685),(689,685),(690,685),(692,693),(694,693),(695,693),(696,693),(697,693),(698,693),(692,699),(700,699),(701,699),(702,699),(703,699),(704,699),(692,705),(706,705),(707,705),(708,705),(709,705),(710,705),(692,711),(712,711),(713,711),(714,711),(715,711),(716,711),(692,717),(718,717),(719,717),(720,717),(721,717),(722,717),(692,723),(724,723),(725,723),(726,723),(727,723),(728,723),(730,731),(732,731),(733,731),(734,731),(735,731),(736,731);
CREATE TABLE `requires` (
  `Route_id` integer NOT NULL
,  `Sensor_id` integer NOT NULL
,  PRIMARY KEY (`Route_id`,`Sensor_id`)
);
INSERT INTO `requires` VALUES (3,6),(3,12),(3,18),(3,24),(3,30),(3,36),(3,42),(50,53),(50,59),(67,70),(67,76),(67,82),(67,88),(67,94),(67,100),(67,106),(67,114),(67,120),(67,126),(67,134),(67,140),(67,146),(67,152),(67,158),(67,164),(67,172),(67,178),(67,184),(67,190),(67,196),(67,202),(210,213),(210,219),(210,225),(210,231),(210,237),(210,243),(210,249),(210,255),(210,261),(210,269),(210,275),(210,283),(210,289),(210,295),(210,303),(210,311),(210,317),(210,323),(210,329),(210,337),(210,343),(210,349),(210,357),(210,363),(210,369),(210,375),(210,381),(210,387),(210,393),(210,401),(210,407),(210,413),(210,419),(210,425),(210,431),(210,437),(210,443),(210,449),(210,457),(210,463),(210,469),(210,475),(210,481),(210,487),(210,493),(210,499),(210,507),(210,513),(210,519),(210,525),(210,533),(210,539),(210,545),(210,551),(210,557),(210,565),(210,571),(210,579),(210,585),(210,593),(210,599),(210,605),(210,611),(618,621),(618,629),(618,635),(618,641),(618,647),(618,653),(618,659),(618,665),(618,673),(618,679),(618,685),(618,693),(618,699),(618,705),(618,711),(618,717),(618,723),(618,731);
CREATE INDEX "idx_connectsTo_connectsTo_idx1" ON "connectsTo" (`TrackElement1_id`);
CREATE INDEX "idx_connectsTo_connectsTo_idx2" ON "connectsTo" (`TrackElement2_id`);
CREATE INDEX "idx_Route_route_active_idx" ON "Route" (`active`);
CREATE INDEX "idx_Semaphore_semaphore_signal_idx" ON "Semaphore" (`signal`);
CREATE INDEX "idx_Segment_segment_length_idx" ON "Segment" (`length`);
CREATE INDEX "idx_monitoredBy_monitoredBy_idx" ON "monitoredBy" (`Sensor_id`,`TrackElement_id`);
END TRANSACTION;
