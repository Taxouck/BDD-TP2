create dbspace BANQUE;

create table CLIENT(
	numcli integer (10),
	nom char (25),
	prenom char (25),
	adresse char (255),
	primary key numcli) in BANQUE;
	
create table COMPTE(
	numcom integer (10),
	solde integer (10),
	primary key numcom) in BANQUE;
	
create table BENEFICIAIRE(
	numcli integer (10),
	numcom integer (10),
	with numcli foreign key from CLIENT on delete null on update cascade,
	with numcom foreign key from COMPTE on delete null on update cascade,
	primary key (numcli,numcom)) in BANQUE;
	
create table TRANSACTIONB(
	numcli integer (10),
	numcom integer (10),
	montant integer (10),
	datetrs char(10),
	with numcli foreign key from CLIENT on delete null on update cascade,
	with numcom foreign key from COMPTE on delete null on update cascade,
	primary key (numcli,numcom)) in BANQUE;