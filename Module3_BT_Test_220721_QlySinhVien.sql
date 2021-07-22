CREATE DATABASE bt_quanlysv_22_7_21;
use bt_quanlysv_22_7_21;
create table students(
studentID int primary key,
studentName nvarchar(50),
Age int,
Email varchar(100)
);
create table classStudent(
classStudentID int primary key,
studentID int,
classID int,
foreign key (studentID) references students(studentID),
foreign key (classID) references classes(classID)
);
create table classes(
classID int primary key,
className nvarchar(50)
);
create table Marks(
markID int primary key,
mark int,
subjectID int,
studentID int,
foreign key (subjectID) references subjects(subjectID),
foreign key (studentID) references students(studentID)
);
create table subjects(
subjectID int primary key,
subjectName nvarchar(50)
);
insert into students values (1,'Nguyen Quang An',18,'an@yahoo.com'),(2,'Nguyen Cong Vinh',20,'vinh@gmail.com'),(3,'Nguyen Van Quyen',19,'quyen'),(4,'Pham Thanh Binh',25,'binh@com'),(5,'Nguyen Van Tai Em', 30, 'taiem@sport.vn');
insert into classes values (1,'C0706L'),(2,'C0708L');
insert into classStudent values(1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,2);
insert into subjects values (1,'SQL'),(2,'Java'),(3,'C'),(4,'Visual Basic');
insert into Marks values (1,8,1,1),(2,4,2,1),(3,9,1,1),(4,7,1,3),(5,3,1,4),(6,5,2,5),(7,8,3,3),(8,1,3,5),(9,3,2,4);
/*
Viet truy van:
C1.Hien thi danh sach tat ca cac hoc vien 
C2. Hien thi danh sach tat ca cac mon hoc
C3. Tinh diem trung binh 
C4. Hien thi mon hoc nao co hoc sinh thi duoc diem cao nhat
C5. Danh so thu tu cua diem theo chieu giam
C6. Thay doi kieu du lieu cua cot SubjectName trong bang Subjects thanh nvarchar(max)
C7. Cap nhat them dong chu « Day la mon hoc «  vao truoc cac ban ghi tren cot SubjectName trong bang Subjects
C8. Viet Check Constraint de kiem tra do tuoi nhap vao trong bang Student yeu cau Age >15 va Age < 50
C9.Loai bo tat ca quan he giua cac bang
C10. Xoa hoc vien co StudentID la 1
C11. Trong bang Student them mot column Status co kieu du lieu la Bit va co gia tri Default la 1
C12. Cap nhap gia tri Status trong bang Student thanh 0
*/
-- C1 
select studentName from students;
-- C2
select subjectname from subjects;
-- C3
--  Chưa hiểu về group by
select  studentID, avg(mark) as diemtb from marks group by studentid;
-- C4

-- C5
-- Chưa hiểu
select row_number() over(order by mark) as stt, mark from marks;
-- C6 
-- Chưa hiểu
ALTER TABLE `test2`.`subject` 
CHANGE COLUMN `subjectname` `subjectname` NVARCHAR(4000);


