SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION Count_Students_By_Department (
    p_DepartmentID IN NUMBER
)
RETURN NUMBER
IS
    v_Count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_Count
    FROM Student s
    JOIN Course c ON s.CourseID = c.CourseID
    JOIN Faculty f ON c.FacultyID = f.FacultyID
    WHERE f.DepartmentID = p_DepartmentID;

    RETURN v_Count;
END;
/
