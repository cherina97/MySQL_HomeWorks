drop database if exists hospital;

create database hospital;

use hospital;

create table hospital_department (
id int not null primary key auto_increment,
name_of_department varchar (50) not null
);

create table doctors (
id int not null primary key auto_increment,
name_of_doctor varchar (50) not null,
surname_of_doctor varchar (50) not null,
department_id int not null,
foreign key (department_id) references hospital_department(id)
);

create table main_doctor (
name_of_doctor varchar (50) not null,
surname_of_doctor varchar (50) not null,
department_id int not null,
foreign key (department_id) references hospital_department(id)
);

create table patients (
id int not null primary key auto_increment,
name varchar (50) not null,
surnam varchar (50) not null,
year_of_bithday date not null,
some_information text,
doctor_id int not null,
foreign key (doctor_id) references doctors(id),
room_id int not null
);

create table free_pills (
id int not null primary key auto_increment,
name_of_pill varchar (50) not null,
count int,
pill_id int not null
);

create table patient_pill (
patient_id int not null,
pill_id int not null,
foreign key (patient_id) references patients(id),
foreign key (pill_id) references free_pills(id)
);

create table patient_doctor (
patient_id int not null,
doctor_id int not null,
foreign key (patient_id) references patients(id),
foreign key (doctor_id) references doctors(id)
);

create table record_to_doctor (
id int not null primary key auto_increment,
date_of_record date not null,
time_of_record time not null,
doctor_id int not null,
foreign key (doctor_id) references doctors(id)
);

create table rooms (
id int not null primary key auto_increment,
number_of_room int not null,
count_of_patients int not null
);

alter table patients add foreign key (room_id) references rooms(id);







