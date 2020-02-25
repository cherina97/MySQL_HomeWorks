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
some_information text,
doctor_id int not null,
foreign key (doctor_id) references doctors(id),
room_id int not null
);

insert into patients (name, surname, year_of_bithday, some_information, doctor_id, room_id)
values ("Антон", "Власов", "1985-04-25", "підозра на апендицит", 2, 1),
("Йосип", "Грынченко", "1998-03-13", "загальне обстеження", 1, 1),
("Ганна", "Осадчук", "2002-01-05", "загальне обстження", 3, 3);

create table free_pills (
id int not null primary key auto_increment,
name_of_pill varchar (50) not null,
count int,
pill_id int not null
);

insert into free_pills (name_of_pill, count, pill_id) 
values ("Бла-бла-форте", 10, 1), ("Культивіт", 50, 3);

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
foreign key (doctor_id) references doctors(id)
);

insert into record_to_doctor (date_of_record, time_of_record, doctor_id)
values ("2019-12-12", "09:30:00", 1), 
("2020-01-02", "09:10:00", 1),
("2019-02-22", "12:50:00", 4),
("2019-01-15", "10:40:00", 3);

create table rooms (
id int not null primary key auto_increment,
number_of_room int not null,
count_of_patients int not null
);

insert into rooms (number_of_room, count_of_patients)
values (101, 5), (203, 4), (300, 5);

alter table patients add foreign key (room_id) references rooms(id);







