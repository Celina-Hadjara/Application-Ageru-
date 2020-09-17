DROP DATABASE IF EXISTS Ageru;
create database Ageru;
use Ageru;


create table Niveau(
Niveau_No char(10),
N_Niveau varchar(50),
Avantages varchar(50),
Description_ text,
CONSTRAINT N1 primary key (Niveau_No)
);


insert into niveau(`Niveau_No`,`N_Niveau`,`Avantages`,`Description_`) values (1, 'BeBe Ageru-er','None','Premiere connexion sur Ageru');
insert into niveau(`Niveau_No`,`N_Niveau`,`Avantages`,`Description_`) values (2, 'Petit Ageru-er','None','2 dons');
insert into niveau(`Niveau_No`,`N_Niveau`,`Avantages`,`Description_`) values (3, 'Ageru-er Ado','None','10 dons');
insert into niveau(`Niveau_No`,`N_Niveau`,`Avantages`,`Description_`) values (4, 'Ageru-er Adulte',' +1 Point chaque semaine','25 dons');
insert into niveau(`Niveau_No`,`N_Niveau`,`Avantages`,`Description_`) values (5, 'Ageru-er Costaud','+1 point chaque semaine','50 dons');
insert into niveau(`Niveau_No`,`N_Niveau`,`Avantages`,`Description_`) values (6, 'Super Ageru-er','+2 point chaque semaine','100 dons');
insert into niveau(`Niveau_No`,`N_Niveau`,`Avantages`,`Description_`) values (7, 'Roi des Ageru-ers','+2 point chaque semaine','500 dons');
insert into niveau(`Niveau_No`,`N_Niveau`,`Avantages`,`Description_`) values (8, 'Dieu des Ageru-ers','+3 point chaque semaine','1000 dons');


create table Service(
Service_No char(10),
N_Service varchar(50),
Priorite varchar(50),
Description_ text,
CONSTRAINT S1 primary key (Service_No)
);

insert into Service(`Service_No`,`N_Service`,`Priorite`,`Description_`) values (1, 'Silver','+2 point chaque semain','5$ par mois');
insert into Service(`Service_No`,`N_Service`,`Priorite`,`Description_`) values (2, 'Platine','+4 point chaque semain','10$ par mois');
insert into Service(`Service_No`,`N_Service`,`Priorite`,`Description_`) values (3, 'Premium','+6 point chaque semain','15$ par mois');

create table Utilisateur(
Utilisateur_No INT PRIMARY KEY NOT NULL auto_increment,
Nom varchar(16) NOT NULL,
Prenom varchar(16) NOT NULL,
Sexe char(1),
Date_Naissance date NOT NULL,
Email text NOT NULL,
Mot_de_passe varchar(50) NOT NULL,
Code_Postal char(6),
Adresse varchar(50),
Description_ text,
Photo blob,
Ref_NiveauNo char(10) ,
Ref_ServiceNo char(10) ,
CONSTRAINT U2 Foreign key (Ref_NiveauNo) references Niveau(Niveau_No),
CONSTRAINT U3 Foreign key (Ref_ServiceNo) references Service(Service_No)
) ;

alter table utilisateur change Adresse Adresse varchar(50);

INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ('ALBAN', 'Pierre','H','1990-11-13','albanpierre@gmail.com','alban155',75019, '345 Rue pyrenes','Jaime bien les dons',1,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'AUBRY', 'Anne', 'F','1993-09-12','aubryabc@gmail.com','aubryaubry',68000,'34 Allée Adrienne-Lecouvreur','Contactez-moi pour les dons',3,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'BLANDIN', 'Agnès','F','1995-07-15','blandinmas@outlook.com','blandin123',13000, '24 Villa Claude-Lorrain','Je voudrais cherche une table',4,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'BLOUIN', 'Albert','H','1999-08-02','albertfer@gmail.com','alberbloudin1', 84002, '25 Neuvilly','Je cherche les dons',3,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'CANONGE', 'Alain','H','1996-09-07','alain@gmail.com','alainwark123',30126, '234 Les Moullieres','Bonjour, je suis Alain',1,3);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'CASADEI', 'Carine','F','1994-05-05','casadei@gmail.com','05051994Aa', 5000, '23 Marcel Meyer','Bonjour, je suis Carine',5,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'CHRISTMANN', 'Aldo','H','1990-12-11','alodochris@gmail.com','aldoc123', 69005, '33 Maréchal Foch','Bonjour, je suis Aldo',8,3);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'CORNET', 'Judicaël','F','1992-02-18','judicale@gmail.com','cornet123', 6200, '303 Emmanuel Bridault','Bonjour, je suis Judicael',7,3);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'CRIBIER', 'Thierry','H','1991-03-25','cribier@gmail.com','cribierAa12', 34003, '10 Milon de Veraillon','jaime des chats',4,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'DARIBERT', 'Claude','H','1989-01-30','alanwarker@gmail.com','thedarknight', 74800, '01 Abadie','Bonjour, je suis Claude',4,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'DEMARTEL', 'Delphine','H','1980-02-27','delphine@outlook.com','delphinenanterre', 51000, 'REIMS','Bonjour, je suis Delphine',5,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'DOMINICCI', 'Lionel','H','1999-08-12','lionelmessi@gmail.com','lioneldominicci', 68000, '13 Rue Bartholdi','Jai bCode_Postal de chose a donner',5,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'FAUCHON', 'François','H','2000-07-07','francoisdee@gmail.com','francoisfauchon11', 84210, '10 Rue Bertrand Monnet','Jai un appartement a louer',2,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'FOURNEY', 'Frédéric','H','1999-03-30','fourney@gmail.com','fourney155', 26100, '15 Rue Blaise Pascal','Bonjour, je suis Frederic',2,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'GIBON', 'Colette','F','2001-12-11','giboncolette@gmail.com','gibonnAa12', 69300, '203 Rue Alfred de Vigny','Bonjour, je suis Colette',7,1);
INSERT INTO `Utilisateur` (`Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'GUIGONNET', 'François','H','2003-10-15','guigonnet@gmail.com','guigonet12345', 6200, '33 Rue Ampère','Bonjour, je suis Francois',4,3);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'HUVE', 'Myriam','F','2001-05-02','Myriamaffaire@outlook.com','myriam1aA', 38000, '20 Rue Daguerre et Niepce','Bonjour, je suis Myriam',1,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'JOUANNIC', 'Delphine','H','1993-03-10','jouannicdelphine@outlook.com','jouanni1', 69008, '67 Rue Denfert-Rochereau','Qui veut des dons :v',2,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'JOURNE', 'Lionel','H','1990-01-30','journe@gmail.com','journelionel1',75019, '12 Allée Anne-de-Beaujeu','J`habit a Paris, contactez-moi',1,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'LAPORTE', 'Renaud','H','2000-02-10','renaud@gmail.com','renaudLaporte', 74700, '68 Les Revennes','Bonjour, je suis Renaud',3,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'LEMETTRE', 'Sophie','F','1995-10-19','sophiele@gmail.com','sophielemettre', 74800, '55 Les Rubins','Bonjour, je suis Sophie',5,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'LOTELIER', 'Patrick','H','1993-11-11','patrick@gmail.com','lotelier111', 42100, '87 LAlette','Bonjour, je suis Patrick',1,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'MALOT', 'Nicolas','H','2003-10-12','nicolas@gmail.com','malotnicolas3321', 13070, '234 Rue Matheron','Jaime bien cette application',2,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'MARGUIER', 'Rémy','F','2001-09-07','marguier@outlook.com','marguier2001', 3350, '30 Rue du 14 Juillet','Bonjour, je suis Remy',3,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'MONIN', 'Sylvain','H','2003-08-01','sylvainmonin@parisnanterre.com','sylvain0102', 84100, '98 Fourchon Neuf','Je mange de la pomme tous les jours',4,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'PENSU', 'Jean','H','1993-11-12','pensu@gmail.com','19931112Aa', 5300, '23 Rue François Mesnier','Bonjour, je suis Jean',5,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'POUILLON', 'Christian','H','2000-02-03','pouillonchristian@gmail.com','pouillon1193', 26100, '66 Maxime Germain','Hello, I`d like to find a friend',1,3);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'PRUDHOMME', 'Jean','H','1999-03-28','prudhomme@gmail.com','prudhommejean', 75016, '35 Mayenen et Chat Grougnard','Bonjour, je suis Jean',1,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'SOREL', 'Alain','H','1991-03-05','alain@parisnanterre.com','alainwork', 7000, '22 Rue de Merlata','Je voudrais chercher des chaussures',5,1);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'TARISSE', 'Carine','H','1993-09-09','carine@gmail.com','carine1993', 69008, '295 Galegiere','Jaime bien les chiens',8,2);
INSERT INTO `Utilisateur` ( `Nom`, `Prenom`,`Sexe`,`Date_Naissance`,`Email`,`Mot_de_passe`,`Code_Postal`, `Adresse`,`Description_`,`Ref_NiveauNo`,`Ref_ServiceNo`) VALUES ( 'TRUCHET', 'Jean-Pierre','H','1991-10-30','jeanpierre@gmail.com','jeanjean132', 74800, '154 Rues des Frères Vieux ','Bonjour, je suis Pierre',3,3);

create table Demande(
Demande_No INT PRIMARY KEY NOT NULL auto_increment,
Etat_Annonce char(10),
TitreD Varchar(50),
Code_Postal char(6),
Description_ text,
Ref_Utilisateur INT,
Constraint D2 Foreign key (Ref_Utilisateur) references Utilisateur(Utilisateur_No)
); 

insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Reserve','Ugg mini 36',94000,'je recherche des UGG basses (mini) camel/ noir/ gris taille 36 en très bon état général c’est pour les portées souvent',3);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Libre', 'Appareil a fondue',75016,'Bonjour , je recherche un appareil à fondue , idéalement électrique . Déplacement sur les communes de Champigny, saint Maur, Jointville, le Perreux , bry sur Marne. Noisy le grand , champs etc',1);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Libre','Urgent Vêtements femmes enfants et bébé', 74800,'Nous faisons une collecte pour une femme syrienne qui vient d’accoucher Et qui est vraiment dans le besoin. Elle a quatre enfants. Ils n’ont pas de nourriture ni de vêtements. Merci',31);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Libre','lait bébé 2 âge',94000,'Bonjour je cherche pour mon fils du lait 2 ème âge, merci d`avance pour votre aide',27);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Reserve','Tous types de denrées alimentaires',75011,'Intéressé par tous types de denrées alimentaires ',20);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Libre','gâteaux céréale',42100, 'Bonjour Je recherche des gâteaux et céréales. Merci',18);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Reserve','Cartes Pokémon',93000,'Bonjour, si des fois vous avez des cartes Pokémon pour un petit garçon je suis preneuse. Tous types de cartes, même état moyen. Merci',2);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Reserve','Sac rectangulaire format A4',92000,'Bonjour je cherche un Sac rectangulaire format A4',3);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Libre','valise',75011,'Cherche valises',4);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Libre','baignoire bébé',75013,'bonjour je recherche une baignoire pour bébé, ma fille accouche bientôt, svp urgent merci',28);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Reserve','chargeur sumsung',75015,'svp j`ai tomber panne merci pour votre générosité',7);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Libre','paniers de fruits ou de légumes',75011,'Bonsoir, je suis à la recherche d`un lot de fruits ou de légumes.',30);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Libre','Produits protéinés',94000,'Recherche produits protéiné pour musculation',15);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Libre','nourriture tout type',93000,'recherche tout type de nourriture boisson ect sur Villepinte 93 merci',13);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Reserve','donner repas à des SDF',92000,'donner Repas a Des SDF',11);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) Values('Reserve','Pâtes spaghettis ext je prends tout',91000,'Bonjour je suis dans le besoin j’ai besoin de pâtes spaghettis et pâtes tomates si vous pouvez me donner votre don serai bien venue nous sommes 6 pers 3 adultes 3 petits merci beaucoup d’avance',8);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) values('Libre','Maison',93000,'Je veux chercher un appartement pendant 1 semaine',16);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) values('Libre','Appartement',94000,'J`ai besoin de chercher un appartement dans 3 jours',25);
insert into Demande(`Etat_Annonce`,`TitreD`,`Code_Postal`, `Description_`,`Ref_Utilisateur`) values('Reserve','Studio 10m2',93000,'Bonjour, je voudrais chercher un studio',18);

create table Offre (
Offre_No INT PRIMARY KEY NOT NULL auto_increment,
Etat_Annonce char(10),
TitreD varchar(50),
Code_Postal char(6),
Description_ text,
Ref_Utilisateur INT,
constraint O2 foreign key (Ref_Utilisateur) references Utilisateur(Utilisateur_No)
);


insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Libre','chaussures P27,5',72003,'Chaussures P27, 5 Changer les lacets Usées mais pas trouées',30);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Libre','Paire de boucles d’oreilles',75011,'Paire de boucles d’oreilles',28);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Reserve','Sweat-shirt',73000,'Sweat-shirt Deeluxe&co taille 16 ans',29);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Reserve','soupe et bouillon',75012,'1 paquet de harira marocaine neuf, carton endomagé mais le sachet à l`intérieur est impécable',10);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Libre','Baguette de campagne',75013,'Baguette de campagne',9);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Libre','Sucre d’orge',94000,'27 sucre d’orge',24);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Reserve','masque visage anti rides',75020,'masque antirides a venir chercher a la gare de Grigny centre',15);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Reserve','3 bougeoirs sur mur',75019,'Je donne 3 bougeoirs. S`accroche sur mur. 2 bougeoir pour 1 bougie. 1 bougeoir pour 10 bougies',17);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Libre','Pomme d`Api',92000,'À venir chercher à Montsoult après 18h30 ou le mercredi ou certains week-ends. Voir aussi mes autres annonces.',19);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Libre','3 petits bougies',95000,'Maisons du monde Non utilisées ***attention remise possible à partir de mardi uniquement***',21);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Reserve','donne un grand camion',92005,'Grand camion en très bon état',18);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Reserve','donne sachet de salade',91000,'Sachet de jeunes pousses de roquette. À récupérer à mon domicile proche du métro Mairie des Lilas car je ne me déplace pas',22);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Libre','Céréales bébé goût biscuit',95000,'Céréales bébé goût biscuit Quantité à hauteur du pouce (~70%)',11);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Reserve','Deux doses de lait nestlé 3',75014,'Deux doses de lait nestlé Nidal 3',31);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Libre','Menthe et persil frais',75011,'À venir découper selon ses besoins',27);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Reserve','gnocchi',75003,'a venir chercher',14);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Libre','Un studio',92000,'J`ai un studio 10m2 avec cuisine, contactez-moi',11);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Libre','Un appartement',95000,'Contactez-moi',12);
insert into Offre(`Etat_Annonce`,`TitreD`,`Code_Postal`,`Description_`,`Ref_Utilisateur`) values('Reserve','Un studio 9m2',75013,'Bonjour, contactez-moi par mail',29);

create table Objet (
Objet_No INT PRIMARY KEY NOT NULL auto_increment,
Categorie varchar(50),
Etat_objet char(20),
Photo blob,
Ref_Demande INT,
Ref_Offre INT,
Constraint Ob2 foreign key (Ref_Demande) references Demande(Demande_No),
Constraint Ob3 foreign key (Ref_Offre) references Offre(Offre_No)
);

insert into Objet(`Categorie`,`Etat_objet`,`Ref_Demande`) values('Vêtements','Comme neuf',1);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Demande`) values('Chaussures','Comme neuf',2);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Demande`) values('Électroménager','Comme neuf',3);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Offre`) values('Chaussures','État moyen',1);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Offre`) values('Accessoires de mode','Comme neuf',2);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Offre`) values('Vêtements','À bricoler',3);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Demande`) values('Jeux & Jouets','Comme neuf',7);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Demande`) values('Accessoires de mode','Comme neuf',8);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Demande`) values('Accessoires de mode','Comme neuf',9);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Demande`) values('Pour bébé','Comme neuf',10);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Demande`) values('Électronique','Comme neuf',11);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Offre`) values('Hygiène & Beauté','Comme neuf',7);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Offre`) values('Art et déco','Comme neuf',8);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Offre`) values('Livres, films et musique','Comme neuf',9);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Offre`) values('Art et déco','Comme neuf',10);
insert into Objet(`Categorie`,`Etat_objet`,`Ref_Offre`) values('Jeux & Jouets','Comme neuf',11);

create table Hebergement(
Hebergement_No INT PRIMARY KEY NOT NULL auto_increment,
DateD date,
dateF date,
NbPersonne integer,
Photo blob,
Ref_Demande INT,
Ref_Offre INT,
Constraint H2 foreign key (Ref_Demande) references Demande(Demande_No),
Constraint H3 foreign key (Ref_Offre) references Offre(Offre_No)
);

insert into Hebergement(`DateD`,`DateF`,`NbPersonne`,`Ref_Demande`) values('2019-12-01','2019-12-08',2,17);
insert into Hebergement(`DateD`,`DateF`,`NbPersonne`,`Ref_Demande`) values('2019-12-12','2019-12-15',1,18);
insert into Hebergement(`DateD`,`DateF`,`NbPersonne`,`Ref_Demande`) values('2019-12-03','2019-12-10',2,19);
insert into Hebergement(`DateD`,`DateF`,`NbPersonne`,`Ref_Offre`) values('2019-12-10','2019-12-20',2,17);
insert into Hebergement(`DateD`,`DateF`,`NbPersonne`,`Ref_Offre`) values('2020-01-01','2020-01-05',4,18);
insert into Hebergement(`DateD`,`DateF`,`NbPersonne`,`Ref_Offre`) values('2019-12-10','2019-12-22',1,19);

create table Food(
Food_No INT PRIMARY KEY NOT NULL auto_increment,
DLC date,
Photo blob,
Ref_Demande INT,
Ref_Offre INT,
Constraint F2 foreign key (Ref_Demande) references Demande(Demande_No),
Constraint F3 foreign key (Ref_Offre) references Offre(Offre_No)
);


insert into Food(`DLC`,`Ref_Demande`) values('2019-12-10',4);
insert into Food(`DLC`,`Ref_Demande`) values('2019-12-20',5);
insert into Food(`DLC`,`Ref_Demande`) values('2019-12-05',6);
insert into Food(`DLC`,`Ref_Offre`) values('2020-09-30', 4);
insert into Food(`DLC`,`Ref_Offre`) values('2019-12-05',5);
insert into Food(`DLC`,`Ref_Offre`) values('2019-12-05',6);
insert into Food(`DLC`,`Ref_Demande`) values('2019-12-04',12);
insert into Food(`DLC`,`Ref_Demande`) values('2019-12-15',13);
insert into Food(`DLC`,`Ref_Demande`) values('2019-12-20',14);
insert into Food(`DLC`,`Ref_Demande`) values('2019-12-30',15);
insert into Food(`DLC`,`Ref_Demande`) values('2019-12-10',16);
insert into Food(`DLC`,`Ref_Offre`) values('2019-12-01',12);
insert into Food(`DLC`,`Ref_Offre`) values('2019-12-12',13);
insert into Food(`DLC`,`Ref_Offre`) values('2020-03-19',14);
insert into Food(`DLC`,`Ref_Offre`) values('2020-11-26',15);
insert into Food(`DLC`,`Ref_Offre`) values('2019-12-20',16);

select * from utilisateur;
select MAX(Offre_No) from offre;
select MAX(demande_No) from demande;
select * from offre;
select * from utilisateur inner join demande on Utilisateur_No = Ref_Utilisateur;
select * from utilisateur inner join offre on Utilisateur_No = Ref_Utilisateur ;
select count(Offre_No), prenom from utilisateur inner join offre on Utilisateur_No = Ref_Utilisateur  group by Nom ;
select utilisateur.Nom, utilisateur.Prenom, Demande.Etat_Annonce, Demande.TitreD, Demande.Code_Postal, Demande.Description_ from utilisateur inner join demande on Utilisateur_No = Demande.Ref_Utilisateur;
select Max(Offre_No) Nom , Prenom from utilisateur inner join offre on Utilisateur_No = Ref_Utilisateur group by Utilisateur_No ;
select  Nom , Prenom , count(*) as Nb_Demande from utilisateur inner join offre on Utilisateur_No = Ref_Utilisateur group by Utilisateur_No ;