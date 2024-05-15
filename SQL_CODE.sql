#Create database
create database yacht_db;

#Create Customer Table
create table Customer(
Customer_id varchar(8) not null,
Customer_name varchar(20),
Customer_email varchar(30),
Nationality varchar(20),
Customer_phone varchar(25),
PRIMARY KEY (Customer_id)
);

insert into customer
values
('D13-R20', 'Jean Harlow', 'jeanh99@gmail.com', 'German', '005866419887654'),
('D17-022', 'Marilyn Monroe', 'marilyn@hotmail.com', 'French', '+88487618356732'),
('D13-101', 'Bette Davis', 'bette.davis@ulster.ac.uk', 'American', '41728003'),
('D13-203', 'Cary Grant', 'bigcary@yahoo.com', 'British', '+44417654321'),
('D13-42 ', 'Humphrey Bogart', 'bogieh@gmail.com', 'American', '07782751839'),
('D13-306', 'William Holden', 'billyho66@yahoo.com', 'Irish', '+38198322843'),
('D14-38 ', 'Katharine Hepburn', 'kath_hep29@hotmail.com', 'Irish', '00447880708090'),
('D13-R93', 'John Wayne', 'john.wayne@ulster.ac.uk', 'South African', '02890112233'),
('D13-51 ', 'Ingrid Bergman', 'IngridB@hotmail.com', 'Swedish', '02890123456');


#Create Cahrter Table
create table Charter(
Charter_id varchar(6) not null,
Start_date date,
Duration tinyint,
Yacht_name varchar(20),
Customer_id varchar(8) not null,
PRIMARY KEY (Charter_id)
);
INSERT INTO Charter
VALUES 
('CH-033', '2018-06-17', 7, 'Serendipity', 'D13-R20'),
('CH-032', '2018-06-24', 36, 'Second Wind', 'D17-022'),
('CH-027', '2018-06-25', 7, 'Mad Hatter', 'D13-101'),
('CH-034', '2018-06-30', 18, 'Serendipity', 'D13-203'),
('CH-036', '2018-07-02', 14, 'Serenity', 'D13-42'),
('CH-028', '2018-07-05', 21, 'Mad Hatter', 'D13-42'),
('CH-043', '2018-07-06', 10, 'Windsong', 'D13-306'),
('CH-030', '2018-07-11', 14, 'Orion', 'D13-R20'),
('CH-039', '2018-07-12', 7, 'Wind Dancer', 'D13-101'),
('CH-035', '2018-07-22', 10, 'Serendipity', 'D13-R20'),
('CH-037', '2018-07-23', 21, 'Serenity', 'D14-38'),
('CH-044', '2018-07-29', 35, 'Windsong', 'D13-306'),
('CH-031', '2018-07-30', 10, 'Orion', 'D13-101'),
('CH-029', '2018-08-05', 14, 'Mad Hatter', 'D13-R93'),
('CH-040', '2018-08-10', 10, 'Wind Dancer', 'D17-022'),
('CH-038', '2018-08-18', 7, 'Serenity', 'D13-203'),
('CH-041', '2018-08-23', 7, 'Wind Dancer', 'D13-51'),
('CH-026', '2018-08-25', 14, 'Escape', 'D13-51'),
('CH-042', '2018-09-06', 15, 'Wind Dancer', 'D14-38'),
('CH-045', '2018-09-06', 21, 'Windsong', 'D13-203');

#CREATE PORT TABLE
create table `port`(
Port_name varchar(20) not null,
Port_phone varchar(20) default null,
Port_email varchar(50) default null,
Dock_count smallint,
charter_id VARCHAR(6),
PRIMARY KEY (Port_name, charter_id)
);

INSERT INTO `port`
VALUES 
('Genoa', '+3984774025', 'genoa667@genoaadmin.co.it', 160, 'CH-033'),
('Kusadasi', '+9045204295', 'Kusadasi_harbour@hotmail.co.tr', 96, 'CH-032'),
('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', 211, 'CH-027'),
('Marmaris', '+90(0)62228138', NULL, 69, 'CH-032'),
('Perpignan', '+3373600125', NULL, 88, 'CH-027'),
('Genoa', '+3984774025', 'genoa667@genoaadmin.co.it', 160, 'CH-034'),
('Genoa', '+3984774025', 'genoa667@genoaadmin.co.it', 160, 'CH-036'),
('Paphos', '+35788301000', 'paphosmariana@cyprusports.cy', 47, 'CH-032'),
('Monaco', '0037788356302', 'mariana@monacoport.mc', 104, 'CH-034'),
('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', 211, 'CH-028'),
('Dénia', '+90229453883', 'denia_port@denia_port.com', 31, 'CH-043'),
('St Tropez', NULL, 'master@sttropezmarina.fr', 239, 'CH-036'),
('Cartagena', '+34(0)62045005', NULL, 21, 'CH-043'),
('Palma', '+3494955320', NULL, 74, 'CH-028'),
('Marseiles', '+3330026016', 'marseiles_port@france_ports.fr', 92, 'CH-034'),
('Marmaris', '+90(0)62228138', NULL, 69, 'CH-030'),
('Malaga', '+3430336117', 'harbour_master@malagaport.com', 198, 'CH-043'),
('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', 211, 'CH-039'),
('Heraklion', NULL, 'herp@heraklioncity.co.gr', 85, 'CH-032'),
('Monaco', '0037788356302', 'mariana@monacoport.mc', 104, 'CH-036'),
('St Tropez', NULL, 'master@sttropezmarina.fr', 239, 'CH-034'),
('Cartagena', '+34(0)62045005', NULL, 21, 'CH-028'),
('Paphos', '+35788301000', 'paphosmariana@cyprusports.cy', 47, 'CH-030'),
('Athens', '+3014936640', 'paays7@athensport.gr', 106, 'CH-032'),
('Heraklion', NULL, 'herp@heraklioncity.co.gr', 85, 'CH-030'),
('Valencia', '+3483884002', NULL, 74, 'CH-028'),
('Genoa', '+3984774025', 'genoa667@genoaadmin.co.it', 160, 'CH-035'),
('Izmir', '009062602105', NULL, 93, 'CH-032'),
('Genoa', '+3984774025', 'genoa667@genoaadmin.co.it', 160, 'CH-037'),
('Cagliari', '+3963660326', 'ettwu7@gmail.com', 40, 'CH-035'),
('Naples', '+3990583686', NULL, 132, 'CH-037'),
('Dénia', '+90229453883', 'denia_port@denia_port.com', 31, 'CH-044'),
('Marmaris', '+90(0)62228138', NULL, 69, 'CH-031'),
('Naples', '+3990583686', NULL, 132, 'CH-035'),
('Palermo', '+3922746104', 'ggaft4@visitpalermo.co.it', 57, 'CH-037'),
('Malaga', '+3430336117', 'harbour_master@malagaport.com', 198, 'CH-044'),
('Heraklion', NULL, 'herp@heraklioncity.co.gr', 85, 'CH-031'),
('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', 211, 'CH-029'),
('Cagliari', '+3963660326', 'ettwu7@gmail.com', 40, 'CH-037'),
('Bodrum', '+9099264831', NULL, 89, 'CH-031'),
('Lisbon', '0035144700212', NULL, 79, 'CH-044'),
('Cartagena', '+34(0)62045005', NULL, 21, 'CH-029'),
('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', 211, 'CH-040'),
('St Tropez', NULL, 'master@sttropezmarina.fr', 239, 'CH-040'),
('Magaluf', NULL, 'maghar@maghar.com', 88, 'CH-029'),
('Cadiz', '+34(0)18128403', NULL, 90, 'CH-044'),
('Montpelier', '+33(0)51411947', NULL, 79, 'CH-040'),
('Genoa', '+3984774025', 'genoa667@genoaadmin.co.it', 160, 'CH-038'),
('Cannes', '+3366295633', 'cannes.marina@yahoo.com', 148, 'CH-038'),
('Tangier', '+21245936724', 'tan778@tangierport.com', 63, 'CH-044'),
('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', 211, 'CH-041'),
('Kusadasi', '+9045204295', 'Kusadasi_harbour@hotmail.co.tr', 96, 'CH-026'),
('Montpelier', '+33(0)51411947', NULL, 79, 'CH-041'),
('Palma', '+3494955320', NULL, 74, 'CH-044'),
('Athens', '+3014936640', 'paays7@athensport.gr', 106, 'CH-026'),
('Izmir', '009062602105', NULL, 93, 'CH-026'),
('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', 211, 'CH-042'),
('Dénia', '+90229453883', 'denia_port@denia_port.com', 31, 'CH-045'),
('Magaluf', NULL, 'maghar@maghar.com', 88, 'CH-042'),
('Cartagena', '+34(0)62045005', NULL, 21, 'CH-042'),
('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', 211, 'CH-045'),
('Dénia', '+90229453883', 'denia_port@denia_port.com', 31, 'CH-042'),
('Montpelier', '+33(0)51411947', NULL, 79, 'CH-045'),
('Magaluf', NULL, 'maghar@maghar.com', 88, 'CH-045');

#CREATE YACHT TABLE:
create table Yacht(
Yacht_name varchar(30) not null,
`Type` varchar(30),
Model varchar(30),
Cost smallint,
Berth_number tinyint,
Home_port varchar(30),
Charter_id varchar(6) not null,
primary key (yacht_name, charter_id)
);
INSERT INTO Yacht
VALUES 
('Serendipity', 'Monohull', 'Catalina 350', 2995.92, 9, 'Genoa', 'CH-033'),
('Second Wind', 'Catamaran', 'MacGregor 26X', 1063.45, 8, 'Kusadasi', 'CH-032'),
('Mad Hatter', 'Monohull', 'Jeanneau 42 DS', 869.45, 4, 'Barcelona', 'CH-027'),
('Serendipity', 'Monohull', 'Catalina 350', 2995.92, 9, 'Genoa', 'CH-034'),
('Serenity', 'Powered', 'Ranger 28', 2294, 11, 'Genoa', 'CH-036'),
('Mad Hatter', 'Monohull', 'Jeanneau 42 DS', 869.45, 4, 'Barcelona', 'CH-028'),
('Windsong', 'Catamaran', 'MacGregor 26X', 1352.9, 7, 'Dénia', 'CH-043'),
('Orion', 'Powered', 'Ranger 28', 2309.56, 9, 'Marmaris', 'CH-030'),
('Wind Dancer', 'Monohull', 'Jeanneau 42 DS', 892.4, 4, 'Barcelona', 'CH-039'),
('Serendipity', 'Monohull', 'Catalina 350', 2995.92, 9, 'Genoa', 'CH-035'),
('Serenity', 'Powered', 'Ranger 28', 2294, 11, 'Genoa', 'CH-037'),
('Windsong', 'Catamaran', 'MacGregor 26X', 1352.9, 7, 'Dénia', 'CH-044'),
('Orion', 'Powered', 'Ranger 28', 2309.56, 9, 'Marmaris', 'CH-031'),
('Mad Hatter', 'Monohull', 'Jeanneau 42 DS', 869.45, 4, 'Barcelona', 'CH-029'),
('Wind Dancer', 'Monohull', 'Jeanneau 42 DS', 892.4, 4, 'Barcelona', 'CH-040'),
('Serenity', 'Powered', 'Ranger 28', 2294, 11, 'Genoa', 'CH-038'),
('Wind Dancer', 'Monohull', 'Jeanneau 42 DS', 892.4, 4, 'Barcelona', 'CH-041'),
('Escape', 'Monohull', 'Beneteau 373', 3016.34, 10, 'Kusadasi', 'CH-026'),
('Wind Dancer', 'Monohull', 'Jeanneau 42 DS', 892.4, 4, 'Barcelona', 'CH-042'),
('Windsong', 'Catamaran', 'MacGregor 26X', 1352.9, 7, 'Dénia', 'CH-045');


#CREATE VISIT TABLE
create table Visit(
Charter_id varchar(6) not null,
Port_name varchar(30) not null,
Visit_id varchar(4) not null,
Exp_date date,
Visit_duration tinyint,
PRIMARY KEY(visit_id)
);
insert into Visit
values
('CH-033','Genoa','V101','2018-06-17',0),
('CH-032','Kusadasi','V102','2018-06-24',0),
('CH-027','Barcelona','V103','2018-06-25',0),
('CH-032','Marmaris','V104','2018-06-27',1),
('CH-027','Perpignan','V105','2018-06-29',1),
('CH-034','Genoa','V106','2018-06-30',1),
('CH-036','Genoa','V107','2018-07-02',1),
('CH-032','Paphos','V108','2018-07-04',3),
('CH-034','Monaco','V109','2018-07-04',2),
('CH-028','Barcelona','V110','2018-07-05',1),
('CH-043','Dénia','V111','2018-07-06',0),
('CH-036','St Tropez','V112','2018-07-07',2),
('CH-043','Cartagena','V113','2018-07-08',1),
('CH-028','Palma','V114','2018-07-09',3),
('CH-034','Marseiles','V115','2018-07-10',1),
('CH-030','Marmaris','V116','2018-07-11',0),
('CH-043','Malaga','V117','2018-07-11',3),
('CH-039','Barcelona','V118','2018-07-12',1),
('CH-032','Heraklion','V119','2018-07-13',1),
('CH-036','Monaco','V120','2018-07-13',1),
('CH-034','St Tropez','V121','2018-07-15',1),
('CH-028','Cartagena','V122','2018-07-16',1),
('CH-030','Paphos','V123','2018-07-16',2),
('CH-032','Athens','V124','2018-07-19',3),
('CH-030','Heraklion','V125','2018-07-21',1),
('CH-028','Valencia','V126','2018-07-22',2),
('CH-035','Genoa','V127','2018-07-22',1),
('CH-032','Izmir','V128','2018-07-23',1),
('CH-037','Genoa','V129','2018-07-23',0),
('CH-035','Cagliari','V130','2018-07-26',1),
('CH-037','Naples','V131','2018-07-26',1),
('CH-044','Dénia','V132','2018-07-29',0),
('CH-031','Marmaris','V133','2018-07-30',0),
('CH-035','Naples','V134','2018-07-30',1),
('CH-037','Palermo','V135','2018-07-31',1),
('CH-044','Malaga','V136','2018-08-02',1),
('CH-031','Heraklion','V137','2018-08-03',1),
('CH-029','Barcelona','V138','2018-08-05',0),
('CH-037','Cagliari','V139','2018-08-05',2),
('CH-031','Bodrum','V140','2018-08-06',2),
('CH-044','Lisbon','V141','2018-08-07',4),
('CH-029','Cartagena','V142','2018-08-10',1),
('CH-037','Naples','V143','2018-08-10',1),
('CH-040','Barcelona','V144','2018-08-10',0),
('CH-040','St Tropez','V145','2018-08-13',1),
('CH-029','Magaluf','V146','2018-08-15',1),
('CH-044','Cadiz','V147','2018-08-15',1),
('CH-040','Montpelier','V148','2018-08-17',1),
('CH-038','Genoa','V149','2018-08-18',0),
('CH-038','Cannes','V150','2018-08-22',1),
('CH-044','Tangier','V151','2018-08-22',2),
('CH-041','Barcelona','V152','2018-08-23',0),
('CH-026','Kusadasi','V153','2018-08-25',0),
('CH-041','Montpelier','V154','2018-08-27',1),
('CH-044','Palma','V155','2018-08-27',1),
('CH-026','Athens','V156','2018-08-29',2),
('CH-026','Izmir','V157','2018-09-05',1),
('CH-042','Barcelona','V158','2018-09-06',0),
('CH-045','Dénia','V159','2018-09-06',1),
('CH-042','Magaluf','V160','2018-09-08',1),
('CH-042','Cartagena','V161','2018-09-10',2),
('CH-045','Barcelona','V162','2018-09-12',2),
('CH-042','Dénia','V163','2018-09-15',1),
('CH-045','Montpelier','V164','2018-09-17',2),
('CH-042','Magaluf','V165','2018-09-18',1),
('CH-045','Magaluf','V166','2018-09-23',1);

#update table
alter table charter
#add foreign key
add constraint fk_customer_id
foreign key (customer_id) references customer(customer_id)
#on delete cascade
on delete cascade,
#add foreign key
add constraint fk_yacht_name
foreign key (yacht_name) references yacht(yacht_name)
#on delete cascade
on delete cascade;

#update table
alter table `port`
#add foreign key
add constraint fk_charter_id
foreign key (charter_id) references charter(charter_id)
#on delete cascade
on delete cascade;

#update table
alter table yacht
#add foreign key
add constraint fk_charter_2_id
foreign key (charter_id) references charter(charter_id)
#on delete cascade
on delete cascade,
#add foreign key
add constraint fk_home_port
foreign key (home_port) references `port`(port_name)
#on delete cascade
on delete cascade;

#update table
alter table visit
#add foreign key
add constraint fk_charter_3_id
foreign key (charter_id) references charter(charter_id)
#on delete cascade
on delete cascade,
#add foreign key
add constraint fk_port_name
foreign key (port_name) references `port`(port_name)
#on delete cascade
on delete cascade; 





















