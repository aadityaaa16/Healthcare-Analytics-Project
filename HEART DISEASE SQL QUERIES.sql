CREATE DATABASE heart_disease;
USE heart_disease;

CREATE TABLE heart (
    age INT,
    sex INT,
    cp INT,
    trestbps INT,
    chol INT,
    fbs INT,
    restecg INT,
    thalach INT,
    exang INT,
    oldpeak FLOAT,
    slope INT,
    ca INT,
    thal INT,
    target INT
);

SET GLOBAL local_infile=1;
LOAD DATA INFILE "C:\Program Files\MySQL\MySQL Server 8.0\uploads\heart.csv"
INTO TABLE heart
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


##Count rows
select count(*) FROM heart;


##Average age
SELECT AVG(age) FROM heart;


##Gender distribution
SELECT sex, COUNT(*) FROM heart GROUP BY sex; 
 

##Heart disease cases by gender
SELECT sex, COUNT(*) AS total, SUM(target) AS disease
FROM heart
GROUP BY sex;


##Count high blood pressure patients (>140)
SELECT COUNT(*) 
FROM heart 
WHERE trestbps > 140;


##Group by chest pain type
SELECT cp, COUNT(*) AS count
FROM heart
GROUP BY cp;


##Highest cholesterol values (top 10)
SELECT * FROM heart
ORDER BY chol DESC
LIMIT 10;


##CATEGORIZE BP LEVELS
SELECT trestbps,
  CASE 
    WHEN trestbps < 120 THEN 'Normal'
    WHEN trestbps BETWEEN 120 AND 139 THEN 'Prehypertension'
    ELSE 'High BP'
  END AS bp_category
FROM heart;


##CATEGORIZE AGE GROUPS
SELECT 
  CASE 
    WHEN age < 40 THEN 'Young'
    WHEN age BETWEEN 40 AND 60 THEN 'Middle Age'
    ELSE 'Senior'
  END AS age_group,
  COUNT(*) AS total
FROM heart
GROUP BY age_group;


##MAX/MIN HEART RATE
SELECT MAX(thalach), MIN(thalach) FROM heart;


##AVG OLDPEAK BY GENDER
SELECT sex, AVG(oldpeak) 
FROM heart
GROUP BY sex;


##COMPARE PATIENTS WITH SAME AGE
SELECT a.age, COUNT(*) 
FROM heart a
JOIN heart b ON a.age = b.age
GROUP BY a.age;


##CTE FOR AVERAGE CHOLESTROL BY AGE GROUP
WITH age_grouped AS (
 SELECT 
   age,
   CASE WHEN age < 40 THEN 'Young'
        WHEN age BETWEEN 40 AND 60 THEN 'Middle Age'
        ELSE 'Senior' END AS age_group,
    chol
 FROM heart
)
SELECT age_group, AVG(chol)
FROM age_grouped
GROUP BY age_group;


##CTE TO FIND TOP CHOLESTROL LEVELS
WITH x AS (
 SELECT age, chol, RANK() OVER (ORDER BY chol DESC) AS rnk
 FROM heart
)
SELECT * FROM x WHERE rnk <= 5;


##RANK BY CHOLESTROL
SELECT age, chol,
RANK() OVER (ORDER BY chol DESC) AS chol_rank
FROM heart;


##DENSE RANK BY HEART RATE
SELECT age, thalach,
DENSE_RANK() OVER (ORDER BY thalach DESC) AS hr_rank
FROM heart;


##ROW NUMBER FOR TABLE
SELECT chol,
ROW_NUMBER() OVER (ORDER BY chol) AS row_num
FROM heart;


##RUNNING SUM OF CHOLESTROL
SELECT chol,
    SUM(chol) OVER (ORDER BY chol) AS running_total
FROM heart;


##MOVING AVERAGE OF CHOLESTROL
SELECT chol,
  AVG(chol) OVER (
      ORDER BY chol
      ROWS BETWEEN 3 PRECEDING AND CURRENT ROW
  ) AS moving_avg_chol
FROM heart;










