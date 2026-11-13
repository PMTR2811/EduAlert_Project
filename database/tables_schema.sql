-- =====================================================
-- EduAlert - tables_schema.sql (Kiet)
-- Tao database + 5 bang khop voi cac Entity JPA cua Triet
-- Chay bang sqlcmd hoac SSMS (co lenh GO)
-- =====================================================

IF DB_ID(N'edualert') IS NULL
    CREATE DATABASE edualert;
GO

USE edualert;
GO

-- 1. students
IF OBJECT_ID(N'dbo.students', N'U') IS NULL
CREATE TABLE dbo.students (
    student_code  VARCHAR(20)   NOT NULL,
    full_name     NVARCHAR(100) NOT NULL,
    date_of_birth DATE          NULL,
    gender        NVARCHAR(10)  NULL,
    major         NVARCHAR(100) NULL,
    cohort        VARCHAR(20)   NULL,
    status        VARCHAR(30)   NULL,
    CONSTRAINT PK_students PRIMARY KEY (student_code)
);
GO

-- 2. admission_profiles (quan he 1-1 voi students)
IF OBJECT_ID(N'dbo.admission_profiles', N'U') IS NULL
CREATE TABLE dbo.admission_profiles (
    id                 BIGINT IDENTITY(1,1) NOT NULL,
    student_code       VARCHAR(20)  NOT NULL,
    admission_method   VARCHAR(50)  NULL,
    raw_score          FLOAT        NULL,
    standardized_score FLOAT        NULL,
    high_school_type   NVARCHAR(50) NULL,
    CONSTRAINT PK_admission_profiles PRIMARY KEY (id),
    CONSTRAINT UQ_admission_student UNIQUE (student_code),
    CONSTRAINT FK_admission_student FOREIGN KEY (student_code)
        REFERENCES dbo.students (student_code) ON DELETE CASCADE,
    CONSTRAINT CK_admission_scores CHECK (
        (raw_score IS NULL OR raw_score >= 0) AND
        (standardized_score IS NULL OR standardized_score >= 0))
);
GO

-- 3. academic_progress (1 sinh vien - nhieu hoc ky)
IF OBJECT_ID(N'dbo.academic_progress', N'U') IS NULL
CREATE TABLE dbo.academic_progress (
    id                      BIGINT IDENTITY(1,1) NOT NULL,
    student_code            VARCHAR(20) NOT NULL,
    semester                VARCHAR(20) NOT NULL,
    term_gpa                FLOAT       NULL,
    cumulative_gpa          FLOAT       NULL,
    credits_registered      INT         NULL,
    credits_passed          INT         NULL,
    debt_credits_cumulative INT         NULL,
    academic_standing       VARCHAR(30) NULL,
    CONSTRAINT PK_academic_progress PRIMARY KEY (id),
    CONSTRAINT FK_progress_student FOREIGN KEY (student_code)
        REFERENCES dbo.students (student_code) ON DELETE CASCADE,
    CONSTRAINT CK_progress_credits CHECK (
        (credits_registered IS NULL OR credits_registered >= 0) AND
        (credits_passed IS NULL OR credits_passed >= 0) AND
        (debt_credits_cumulative IS NULL OR debt_credits_cumulative >= 0))
);
GO

-- 4. next_semester_plans
IF OBJECT_ID(N'dbo.next_semester_plans', N'U') IS NULL
CREATE TABLE dbo.next_semester_plans (
    id               BIGINT IDENTITY(1,1) NOT NULL,
    student_code     VARCHAR(20)   NOT NULL,
    target_semester  VARCHAR(20)   NOT NULL,
    planned_credits  INT           NULL,
    target_gpa       FLOAT         NULL,
    advisor_notes    NVARCHAR(500) NULL,
    CONSTRAINT PK_next_semester_plans PRIMARY KEY (id),
    CONSTRAINT FK_plan_student FOREIGN KEY (student_code)
        REFERENCES dbo.students (student_code) ON DELETE CASCADE,
    CONSTRAINT CK_plan_credits CHECK (planned_credits IS NULL OR planned_credits >= 0)
);
GO

-- 5. risk_evaluations
IF OBJECT_ID(N'dbo.risk_evaluations', N'U') IS NULL
CREATE TABLE dbo.risk_evaluations (
    id                  BIGINT IDENTITY(1,1) NOT NULL,
    student_code        VARCHAR(20)   NOT NULL,
    evaluation_time     DATETIME2(6)  NULL,
    risk_probability    FLOAT         NULL,
    primary_risk_factor NVARCHAR(255) NULL,
    ai_model_version    VARCHAR(50)   NULL,
    CONSTRAINT PK_risk_evaluations PRIMARY KEY (id),
    CONSTRAINT FK_risk_student FOREIGN KEY (student_code)
        REFERENCES dbo.students (student_code) ON DELETE CASCADE
);
GO

-- Chi muc (Index) de truy van Dashboard nhanh hon
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'IX_students_status' AND object_id = OBJECT_ID(N'dbo.students'))
    CREATE INDEX IX_students_status ON dbo.students (status);
GO
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'IX_progress_student_semester' AND object_id = OBJECT_ID(N'dbo.academic_progress'))
    CREATE INDEX IX_progress_student_semester ON dbo.academic_progress (student_code, semester);
GO
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'IX_plan_student' AND object_id = OBJECT_ID(N'dbo.next_semester_plans'))
    CREATE INDEX IX_plan_student ON dbo.next_semester_plans (student_code);
GO
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'IX_risk_student_time' AND object_id = OBJECT_ID(N'dbo.risk_evaluations'))
    CREATE INDEX IX_risk_student_time ON dbo.risk_evaluations (student_code, evaluation_time DESC);
GO