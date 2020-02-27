drop database if exists hospital;

create database hospital;

use hospital;

create table hospital_department (
id int not null primary key auto_increment,
name_of_department varchar (50) not null
);

insert into hospital_department (name_of_department)
values ("Дерматологічне відділення"), ("Терапевтичне відділення"), 
("Стоматологічне відділення"), ("Кардіологічне відділення");

create table doctors (
id int not null primary key auto_increment,
name_of_doctor varchar (50) not null,
surname_of_doctor varchar (50) not null,
department_id int not null,
foreign key (department_id) references hospital_department(id)
);

insert into doctors (name_of_doctor, surname_of_doctor, department_id)
values ("Галина", "Поліщук", 2), ("Павло", "Радон", 3), 
("Роберт", "Назаренко", 1), ("Анна", "Олеля", 4);

create table main_doctor (
name_of_doctor varchar (50) not null,
surname_of_doctor varchar (50) not null,
department_id int not null,
foreign key (department_id) references hospital_department(id)
);

insert into main_doctor (name_of_doctor, surname_of_doctor, department_id)
values ("Весемир", "Павлович", 1), ("Галина", "Зінчук", 2), 
("Кирило", "Петров", 3), ("Лілія", "Шемчук", 4);

create table patients (
id int not null primary key auto_increment,
name varchar (50) not null,
surname varchar (50) not null,
year_of_bithday date not null,
some_information varchar(50) default "нема інформації",
doctor_id int not null,
foreign key (doctor_id) references doctors(id),
room_id int not null
);

insert into patients (name, surname, year_of_bithday, some_information, doctor_id, room_id)
values ("Антон", "Власов", "1985-04-25", "підозра на апендицит", 2, 2),
("Йосип", "Грінченко", "1999-03-20", "загальне обстеження", 1, 1),
("Валентина", "Павлова", "2010-03-20", "загальне обстеження", 1, 1),
("Марина", "Ящук", "1991-03-17", default, 4, 3),
("Вероніка", "Лисенко", "1988-05-13", default, 3, 3),
("Ганна", "Осадчук", "2002-01-05", "загальне обстження", 3, 5);

create table free_pills (
id int not null primary key auto_increment,
name_of_pill varchar (50) not null,
count int,
pill_id int not null
);

insert into free_pills (name_of_pill, count, pill_id) 
values ("Бла-бла-форте", 10, 1), ("Культивіт", 50, 2);

create table patient_pill (
patient_id int not null,
pill_id int not null,
foreign key (patient_id) references patients(id),
foreign key (pill_id) references free_pills(id)
);

insert into patient_pill (patient_id, pill_id)
values (1, 2), (3, 1);

create table patient_doctor (
patient_id int not null,
doctor_id int not null,
foreign key (patient_id) references patients(id),
foreign key (doctor_id) references doctors(id)
);

insert into patient_doctor (patient_id, doctor_id)
values (2, 4), (1, 1), (3, 1);

create table record_to_doctor (
id int not null primary key auto_increment,
date_of_record date not null,
time_of_record time not null,
doctor_id int not null,
foreign key (doctor_id) references doctors(id),
patient_id int not null,
foreign key (patient_id) references patients(id)
);

insert into record_to_doctor (date_of_record, time_of_record, doctor_id, patient_id)
values ("2019-12-12", "09:30:00", 1 , 1), 
("2020-01-22", "09:50:00", 2, 2),
("2020-01-13", "09:00:00", 2, 3),
("2020-01-05", "12:10:00", 4, 4),
("2019-02-10", "12:50:00", 2, 5),
("2019-01-15", "10:40:00", 3, 6);

create table rooms (
id int not null primary key auto_increment,
number_of_room int not null,
count_of_patients int not null
);

insert into rooms (number_of_room, count_of_patients)
values (101, 5), (203, 4), (300, 5), (301, 5), (210, 4);

alter table patients add foreign key (room_id) references rooms(id);

select hd.name_of_department, md.name_of_doctor, md.surname_of_doctor from hospital_department as hd
join main_doctor as md
on hd.id = md.department_id
order by hd.name_of_department;

select p.name, p.surname, p.year_of_bithday, p.some_information,
d.name_of_doctor, d.surname_of_doctor,
r.number_of_room, hd.name_of_department from patients as p
join doctors as d
on p.doctor_id = d.id
join hospital_department as hd
on d.department_id = hd.id
join rooms as r
on p.room_id = r.id
where p.some_information = "загальне обстеження"
order by p.year_of_bithday;

select 
	hd.name_of_department, md.name_of_doctor, md.surname_of_doctor,
    d.name_of_doctor, d.surname_of_doctor,
    p.name, p.surname, p.year_of_bithday, p.some_information,
    r.number_of_room, r.count_of_patients,
    rec.date_of_record, rec.time_of_record,
    fp.name_of_pill, fp.count
from hospital_department as hd
join doctors as d
on hd.id = d.department_id
join main_doctor as md
on hd.id = md.department_id
join patients as p
on d.id = p.doctor_id
join rooms as r
on p.room_id = r.id
join record_to_doctor as rec
on rec.patient_id = p.id
left join patient_pill as pp
on pp.patient_id = p.id
left join free_pills as fp
on pp.pill_id = fp.pill_id










