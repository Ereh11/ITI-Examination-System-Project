go
CREATE PROCEDURE [dbo].[AddStdExamAnswer]
    @exam_id INT,
    @std_id INT,
    @ques_id INT,
    @std_answer INT
AS
BEGIN TRY
    INSERT INTO Std_ExamAnswer (exam_id, std_id, ques_id, std_answer)
    VALUES (@exam_id, @std_id, @ques_id, @std_answer);
END TRY
BEGIN CATCH
    SELECT 'Insert Failed' AS [Error Message];
END CATCH;

go

CREATE PROCEDURE [dbo].[ModifyStdExamAnswer]
    @exam_id INT,
    @std_id INT,
    @ques_id INT,
    @std_answer INT
AS
BEGIN TRY
    UPDATE Std_ExamAnswer
    SET std_answer = @std_answer
    WHERE exam_id = @exam_id AND std_id = @std_id AND ques_id = @ques_id;
END TRY
BEGIN CATCH
    SELECT 'Update Failed' AS [Error Message];
END CATCH;

go

CREATE PROCEDURE [dbo].[SelectStdExamAnswer]
    @exam_id INT = NULL,
    @std_id INT = NULL,
    @ques_id INT = NULL
AS
BEGIN TRY
    SELECT exam_id, std_id, ques_id, std_answer
    FROM Std_ExamAnswer
    WHERE (@exam_id IS NULL OR exam_id = @exam_id)
      AND (@std_id IS NULL OR std_id = @std_id)
      AND (@ques_id IS NULL OR ques_id = @ques_id);
END TRY
BEGIN CATCH
    SELECT 'Select Failed' AS [Error Message];
END CATCH;

go

CREATE PROCEDURE [dbo].[DeleteStdExamAnswer]
    @exam_id INT,
    @std_id INT,
    @ques_id INT
AS
BEGIN TRY
    DELETE FROM Std_ExamAnswer
    WHERE exam_id = @exam_id AND std_id = @std_id AND ques_id = @ques_id;
END TRY
BEGIN CATCH
    SELECT 'Delete Failed' AS [Error Message];
END CATCH;