CREATE DATABASE lop_hoc;
USE lop_hoc;
DROP TABLE IF EXISTS Score;
DROP TABLE IF EXISTS Subjects;
DROP TABLE IF EXISTS Student;
CREATE TABLE Student(
	MaSV INT PRIMARY KEY,
    HoTenSV VARCHAR(100) NOT NULL
);

CREATE TABLE Subjects(
	MaMH INT PRIMARY KEY,
    TenMH VARCHAR(100) NOT NULL,
    SoTinChi INT CHECK(SoTinChi > 0)
);

CREATE TABLE Score(
	MaSV INT,
    MaMH INT,
    DiemQuaTrinh DECIMAL(4,2),
    DiemCuoiKy DECIMAL(4,2),
    
    PRIMARY KEY (MaSV, MaMH),
    FOREIGN KEY(MaSV) REFERENCES Student(MaSV),
    FOREIGN KEY(MaMH) REFERENCES Subjects(MaMH),
    CHECK (DiemQuaTrinh >= 0 AND DiemQuaTrinh <= 10),
    CHECK (DiemCuoiKy >= 0 AND DiemCuoiKy <= 10)
);
