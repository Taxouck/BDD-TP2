create dbspace VENTE;

create table CLIENT(
	numcli integer (10),
	nom char (25),
	prenom char (25),
	adresse char (255),
	primary key numcli) in VENTE;
	
create table COMMANDE(
	numcom integer (10),
	datecom char (10),
	numcli integer (10),
	with numcli foreign key from CLIENT on delete null on update cascade,
	primary key numcom) in VENTE;
	
create table PRODUIT(
	reference integer (10),
	libelle char (255),
	prix float (10),
	primary key reference) in VENTE;
	
create table CONTENU(
	numcom integer (10),
	reference integer (10),
	quantite char(10),
	with numcom foreign key from COMMANDE on delete null on update cascade,
	with reference foreign key from PRODUIT on delete null on update cascade,
	primary key (numcom)) in VENTE;