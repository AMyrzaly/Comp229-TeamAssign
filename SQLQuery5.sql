ALTER TABLE Comp229TeamAssign.[dbo].Registrations
ADD CONSTRAINT FK_Registrations_DoctorID FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)

ALTER TABLE Comp229TeamAssign.[dbo].Registrations
ADD CONSTRAINT FK_Registrations_AppiontmentID FOREIGN KEY (AppiontmentID) REFERENCES Appiontments(AppiontmentID)
