create table myuser
(userID varchar(3) primary key,
uEmail varchar(30) not null,
uFirst varchar(30) not null,
uLast varchar(30) not null
);

create table agent
(aID varchar(3) primary key, 
aEmail varchar(30) not null,
aFirst varchar(30) not null,
aLast varchar(30) not null
);

create table ticket
(ticketID varchar(6) primary key, 
type varchar(30) not null,
status varchar(30) not null,
location varchar(30) not null
);

create table manager
(mID varchar(3) primary key, 
mEmail varchar(30) not null,
mFirst varchar(30) not null,
mLast varchar(30) not null
);

create table submitted 
(userID varchar(3) not null,
ticketID varchar(6) not null, 
sDate date not null,
primary key (userID, ticketID),
foreign key (userID) references myuser(userID),
foreign key (ticketID) references ticket(ticketID)
);

create table assigns
(mID varchar(3) not null,
ticketID varchar(6) not null, 
primary key (mID, ticketID),
foreign key (mID) references manager(mID),
foreign key (ticketID) references ticket(ticketID)
);

create table worksOn
(aID varchar(3) not null,
ticketID varchar(6) not null, 
openDate date not null,
closeDate date,
primary key (aID, ticketID),
foreign key (aID) references agent(aID),
foreign key (ticketID) references ticket(ticketID)
);

insert into manager (mID, mEmail, mFirst, mLast)
values ('001', 'manager1@helpdesk.com', 'Deniz', 'Arnold');

insert into manager (mID, mEmail, mFirst, mLast)
values ('002', 'manager2@helpdesk.com', 'Shaq', 'Tillmore');

insert into manager (mID, mEmail, mFirst, mLast)
values ('003', 'manager3@helpdesk.com', 'Johnny', 'Sins');

insert into agent (aID, aEmail, aFirst, aLast)
values ('001', 'agent1@helpdesk.com', 'Roger', 'Whitehouse');

insert into agent (aID, aEmail, aFirst, aLast)
values ('002', 'agent2@helpdesk.com', 'Theo', 'Hutchinson');

insert into agent (aID, aEmail, aFirst, aLast)
values ('003', 'agent3@helpdesk.com', 'Bruno', 'Burris');

insert into agent (aID, aEmail, aFirst, aLast)
values ('004', 'agent4@helpdesk.com', 'Martha', 'Sugma');

insert into agent (aID, aEmail, aFirst, aLast)
values ('005', 'agent5@helpdesk.com', 'Catchem', 'Hands');

insert into myuser (userID, uEmail, uFirst, uLast)
values ('001', 'user1@company.com', 'Bob', 'Marley');

insert into myuser (userID, uEmail, uFirst, uLast)
values ('002', 'user2@company.com', 'Matthew', 'Hartman');

insert into myuser (userID, uEmail, uFirst, uLast)
values ('003', 'user3@company.com', 'Sammy', 'Person');

insert into myuser (userID, uEmail, uFirst, uLast)
values ('004', 'user4@company.com', 'Pria', 'Moreno');

insert into myuser (userID, uEmail, uFirst, uLast)
values ('005', 'user5@company.com', 'Shanae', 'Jahzeel');

insert into myuser (userID, uEmail, uFirst, uLast)
values ('006', 'user6@company.com', 'Lhamo', 'Loser');

insert into myuser (userID, uEmail, uFirst, uLast)
values ('007', 'user7@company.com', 'Lauren', 'Harris');

insert into myuser (userID, uEmail, uFirst, uLast)
values ('008', 'user8@company.com', 'Skyler', 'Rivas');

insert into myuser (userID, uEmail, uFirst, uLast)
values ('009', 'user9@company.com', 'Zoja', 'Brandon');

insert into myuser (userID, uEmail, uFirst, uLast)
values ('010', 'user10@company.com', 'Dragma', 'Peanuts');

insert into ticket (ticketID, type, status, location)
values ('000001', 'Hardware', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000002', 'Software', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000003', 'Hardware', 'New', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000004', 'Hardware Request', 'Resolved', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000005', 'Software', 'Overdue', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000006', 'Software', 'Resolved', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000007', 'Hardware', 'Resolved', 'LA');

insert into ticket (ticketID, type, status, location)
values ('000008', 'Hardware Request', 'Resolved', 'LA');

insert into ticket (ticketID, type, status, location)
values ('000009', 'Software', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000010', 'Hardware Request', 'Resolved', 'LV');

insert into ticket (ticketID, type, status, location)
values ('000011', 'Software', 'Overdue', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000012', 'Hardware', 'Resolved', 'LA');

insert into ticket (ticketID, type, status, location)
values ('000013', 'Hardware Request', 'Resolved', 'LA');

insert into ticket (ticketID, type, status, location)
values ('000014', 'Hardware Request', 'New', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000015', 'Software', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000016', 'Hardware', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000017', 'Hardware Request', 'Resolved', 'LV');

insert into ticket (ticketID, type, status, location)
values ('000018', 'Software', 'Overdue', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000019', 'Software', 'Resolved', 'LV');

insert into ticket (ticketID, type, status, location)
values ('000020', 'Software', 'Resolved', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000021', 'Hardware Request', 'Resolved', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000022', 'Hardware', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000023', 'Hardware Request', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000024', 'Hardware Request', 'New', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000025', 'Software', 'Overdue', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000026', 'Hardware Request', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000027', 'Hardware', 'Pending', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000028', 'Software', 'Overdue', 'LA');

insert into ticket (ticketID, type, status, location)
values ('000029', 'Software', 'Resolved', 'LA');

insert into ticket (ticketID, type, status, location)
values ('000030', 'Hardware', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000031', 'Software', 'Overdue', 'LV');

insert into ticket (ticketID, type, status, location)
values ('000032', 'Hardware', 'Overdue', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000033', 'Hardware', 'New', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000034', 'Hardware Request', 'Pending', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000035', 'Hardware', 'Resolved', 'LA');

insert into ticket (ticketID, type, status, location)
values ('000036', 'Software', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000037', 'Hardware', 'New', 'LV');

insert into ticket (ticketID, type, status, location)
values ('000038', 'Hardware Request', 'Resolved', 'LA');

insert into ticket (ticketID, type, status, location)
values ('000039', 'Software', 'Pending', 'LA');

insert into ticket (ticketID, type, status, location)
values ('000040', 'Hardware', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000041', 'Software', 'Overdue', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000042', 'Software', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000043', 'Hardware', 'Resolved', 'LV');

insert into ticket (ticketID, type, status, location)
values ('000044', 'Software', 'Resolved', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000045', 'Hardware Request', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000046', 'Hardware', 'New', 'LV');

insert into ticket (ticketID, type, status, location)
values ('000047', 'Software', 'Resolved', 'PHX');

insert into ticket (ticketID, type, status, location)
values ('000048', 'Hardware', 'Resolved', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000049', 'Hardware', 'Overdue', 'LA');

insert into ticket (ticketID, type, status, location)
values ('000050', 'Hardware Request', 'Resolved', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000051', 'Hardware', 'Overdue', 'DL');

insert into ticket (ticketID, type, status, location)
values ('000052', 'Software', 'Overdue', 'LA');

insert into submitted (userID, ticketID, sDate)
values ('001', '000001', TO_DATE('03-01-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('003', '000002', TO_DATE('01-01-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('002', '000003', TO_DATE('02-01-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('001', '000004', TO_DATE('04-01-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('003', '000005', TO_DATE('05-02-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('002', '000006', TO_DATE('06-02-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('007', '000007', TO_DATE('07-02-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('003', '000008', TO_DATE('08-02-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('007', '000009', TO_DATE('09-01-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('002', '000010', TO_DATE('10-03-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('001', '000011', TO_DATE('11-03-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('003', '000012', TO_DATE('12-03-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('007', '000013', TO_DATE('12-03-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('009', '000014', TO_DATE('13-03-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('003', '000015', TO_DATE('13-03-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('001', '000016', TO_DATE('13-04-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('002', '000017', TO_DATE('14-04-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('007', '000018', TO_DATE('14-04-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('004', '000019', TO_DATE('15-04-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('008', '000020', TO_DATE('15-05-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('004', '000021', TO_DATE('15-05-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('002', '000022', TO_DATE('16-05-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('001', '000023', TO_DATE('03-09-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('008', '000024', TO_DATE('16-05-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('001', '000025', TO_DATE('17-05-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('004', '000026', TO_DATE('17-06-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('008', '000027', TO_DATE('17-06-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('002', '000028', TO_DATE('18-06-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('004', '000029', TO_DATE('19-06-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('006', '000030', TO_DATE('19-06-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('004', '000031', TO_DATE('20-06-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('001', '000032', TO_DATE('21-06-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('010', '000033', TO_DATE('21-07-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('008', '000034', TO_DATE('21-07-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('001', '000035', TO_DATE('21-07-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('006', '000036', TO_DATE('21-07-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('005', '000037', TO_DATE('21-07-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('010', '000038', TO_DATE('21-07-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('005', '000039', TO_DATE('22-07-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('008', '000040', TO_DATE('22-07-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('005', '000041', TO_DATE('22-07-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('009', '000042', TO_DATE('22-08-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('009', '000043', TO_DATE('22-08-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('006', '000044', TO_DATE('23-08-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('005', '000045', TO_DATE('23-08-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('001', '000046', TO_DATE('23-08-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('006', '000047', TO_DATE('24-09-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('006', '000048', TO_DATE('24-09-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('009', '000049', TO_DATE('24-09-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('001', '000050', TO_DATE('24-01-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('003', '000051', TO_DATE('15-02-2021','DD-MM-YYYY'));

insert into submitted (userID, ticketID, sDate)
values ('002', '000052', TO_DATE('12-06-2021','DD-MM-YYYY'));

insert into assigns (mID, ticketID)
values ('001', '000001');

insert into assigns (mID, ticketID)
values ('002', '000002');

insert into assigns (mID, ticketID)
values ('001', '000003');

insert into assigns (mID, ticketID)
values ('003', '000004');

insert into assigns (mID, ticketID)
values ('003', '000005');

insert into assigns (mID, ticketID)
values ('002', '000006');

insert into assigns (mID, ticketID)
values ('003', '000007');

insert into assigns (mID, ticketID)
values ('002', '000008');

insert into assigns (mID, ticketID)
values ('001', '000009');

insert into assigns (mID, ticketID)
values ('002', '000010');

insert into assigns (mID, ticketID)
values ('003', '000011');

insert into assigns (mID, ticketID)
values ('002', '000012');

insert into assigns (mID, ticketID)
values ('003', '000013');

insert into assigns (mID, ticketID)
values ('002', '000014');

insert into assigns (mID, ticketID)
values ('003', '000015');

insert into assigns (mID, ticketID)
values ('001', '000016');

insert into assigns (mID, ticketID)
values ('002', '000017');

insert into assigns (mID, ticketID)
values ('003', '000018');

insert into assigns (mID, ticketID)
values ('001', '000019');

insert into assigns (mID, ticketID)
values ('002', '000020');

insert into assigns (mID, ticketID)
values ('003', '000021');

insert into assigns (mID, ticketID)
values ('002', '000022');

insert into assigns (mID, ticketID)
values ('003', '000023');

insert into assigns (mID, ticketID)
values ('003', '000024');

insert into assigns (mID, ticketID)
values ('001', '000025');

insert into assigns (mID, ticketID)
values ('002', '000026');

insert into assigns (mID, ticketID)
values ('001', '000027');

insert into assigns (mID, ticketID)
values ('002', '000028');

insert into assigns (mID, ticketID)
values ('003', '000029');

insert into assigns (mID, ticketID)
values ('001', '000030');

insert into assigns (mID, ticketID)
values ('003', '000031');

insert into assigns (mID, ticketID)
values ('002', '000032');

insert into assigns (mID, ticketID)
values ('002', '000033');

insert into assigns (mID, ticketID)
values ('003', '000034');

insert into assigns (mID, ticketID)
values ('003', '000035');

insert into assigns (mID, ticketID)
values ('001', '000036');

insert into assigns (mID, ticketID)
values ('002', '000037');

insert into assigns (mID, ticketID)
values ('002', '000038');

insert into assigns (mID, ticketID)
values ('002', '000039');

insert into assigns (mID, ticketID)
values ('002', '000040');

insert into assigns (mID, ticketID)
values ('003', '000041');

insert into assigns (mID, ticketID)
values ('003', '000042');

insert into assigns (mID, ticketID)
values ('003', '000043');

insert into assigns (mID, ticketID)
values ('003', '000044');

insert into assigns (mID, ticketID)
values ('002', '000045');

insert into assigns (mID, ticketID)
values ('003', '000046');

insert into assigns (mID, ticketID)
values ('002', '000047');

insert into assigns (mID, ticketID)
values ('003', '000048');

insert into assigns (mID, ticketID)
values ('002', '000049');

insert into assigns (mID, ticketID)
values ('003', '000050');

insert into assigns (mID, ticketID)
values ('001', '000051');

insert into assigns (mID, ticketID)
values ('002', '000052');

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000001', TO_DATE('04-01-2021','DD-MM-YYYY'), TO_DATE('05-01-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000002', TO_DATE('16-01-2021','DD-MM-YYYY'), TO_DATE('17-01-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000003', TO_DATE('05-01-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000004', TO_DATE('05-01-2021','DD-MM-YYYY'), TO_DATE('07-01-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000005', TO_DATE('07-02-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000006', TO_DATE('12-02-2021','DD-MM-YYYY'), TO_DATE('13-02-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000007', TO_DATE('10-02-2021','DD-MM-YYYY'), TO_DATE('15-02-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000008', TO_DATE('09-02-2021','DD-MM-YYYY'), TO_DATE('10-02-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000009', TO_DATE('16-01-2021','DD-MM-YYYY'), TO_DATE('17-01-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000010', TO_DATE('11-03-2021','DD-MM-YYYY'), TO_DATE('13-03-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000011', TO_DATE('06-06-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000012', TO_DATE('13-03-2021','DD-MM-YYYY'), TO_DATE('19-03-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000013', TO_DATE('05-05-2021','DD-MM-YYYY'), TO_DATE('7-03-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000014', TO_DATE('02-06-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000015', TO_DATE('19-03-2021','DD-MM-YYYY'), TO_DATE('19-03-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000016', TO_DATE('21-04-2021','DD-MM-YYYY'), TO_DATE('23-04-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000017', TO_DATE('25-04-2021','DD-MM-YYYY'), TO_DATE('25-04-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000018', TO_DATE('02-06-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000019', TO_DATE('16-04-2021','DD-MM-YYYY'), TO_DATE('22-04-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000020', TO_DATE('25-05-2021','DD-MM-YYYY'), TO_DATE('29-05-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000021', TO_DATE('25-05-2021','DD-MM-YYYY'), TO_DATE('27-05-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000022', TO_DATE('17-05-2021','DD-MM-YYYY'), TO_DATE('20-05-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000023', TO_DATE('04-09-2021','DD-MM-YYYY'), TO_DATE('6-09-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000024', TO_DATE('18-05-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000025', TO_DATE('23-05-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000026', TO_DATE('17-06-2021','DD-MM-YYYY'), TO_DATE('18-06-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000027', TO_DATE('18-06-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000028', TO_DATE('20-06-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000029', TO_DATE('21-06-2021','DD-MM-YYYY'), TO_DATE('28-06-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000030', TO_DATE('21-06-2021','DD-MM-YYYY'), TO_DATE('24-06-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000031', TO_DATE('22-06-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000032', TO_DATE('23-06-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000033', TO_DATE('23-07-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000034', TO_DATE('23-07-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000035', TO_DATE('23-07-2021','DD-MM-YYYY'), TO_DATE('27-07-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000036', TO_DATE('23-07-2021','DD-MM-YYYY'), TO_DATE('29-07-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000037', TO_DATE('23-07-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000038', TO_DATE('24-07-2021','DD-MM-YYYY'), TO_DATE('25-07-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000039', TO_DATE('24-07-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000040', TO_DATE('24-07-2021','DD-MM-YYYY'), TO_DATE('26-07-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000041', TO_DATE('06-08-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000042', TO_DATE('24-08-2021','DD-MM-YYYY'), TO_DATE('25-08-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000043', TO_DATE('24-08-2021','DD-MM-YYYY'), TO_DATE('29-08-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000044', TO_DATE('24-08-2021','DD-MM-YYYY'), TO_DATE('26-08-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000045', TO_DATE('24-08-2021','DD-MM-YYYY'), TO_DATE('27-08-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('003', '000046', TO_DATE('24-08-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000047', TO_DATE('25-09-2021','DD-MM-YYYY'), TO_DATE('26-09-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000048', TO_DATE('25-09-2021','DD-MM-YYYY'), TO_DATE('30-09-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000049', TO_DATE('25-09-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('002', '000050', TO_DATE('25-09-2021','DD-MM-YYYY'),TO_DATE('27-09-2021','DD-MM-YYYY'));

insert into worksOn (aID, ticketID, opendate, closedate)
values ('005', '000051', TO_DATE('15-02-2021','DD-MM-YYYY'), NULL);

insert into worksOn (aID, ticketID, opendate, closedate)
values ('001', '000052', TO_DATE('12-06-2021','DD-MM-YYYY'), NULL);

select agent.aid, concat(aLast,aFirst) "aName",Extract(Month from openDate)"openMonth",count(*)"numOverdue" 
from worksOn, agent, ticket
where workson.aid = agent.aid and workson.ticketid = ticket.ticketid and ticket.status = 'Overdue'
group by agent.aid,concat(aLast,aFirst),Extract(Month from openDate) 
order by agent.aID;
