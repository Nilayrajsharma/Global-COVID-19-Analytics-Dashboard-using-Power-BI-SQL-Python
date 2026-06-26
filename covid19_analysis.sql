CREATE DATABASE covid19;
use covid19;

ALTER TABLE country MODIFY country VARCHAR(100);
ALTER TABLE countrywise MODIFY country VARCHAR(100);
ALTER TABLE country_daywise MODIFY country VARCHAR(100);
ALTER TABLE vaccination MODIFY country VARCHAR(100);
ALTER TABLE vaccinations_detail MODIFY country VARCHAR(100);
ALTER TABLE covid_19_data MODIFY country VARCHAR(100);


ALTER TABLE country
ADD PRIMARY KEY (country);

ALTER TABLE countrywise
ADD CONSTRAINT fk_countrywise_country
FOREIGN KEY (country)
REFERENCES country(country);

ALTER TABLE country_daywise
ADD CONSTRAINT fk_country_daywise
FOREIGN KEY (country)
REFERENCES country(country);

ALTER TABLE vaccination
ADD CONSTRAINT fk_vaccination_country
FOREIGN KEY (country)
REFERENCES country(country);

ALTER TABLE vaccinations_detail
ADD CONSTRAINT fk_vaccination_detail_country
FOREIGN KEY (country)
REFERENCES country(country);

ALTER TABLE covid_19_data
ADD CONSTRAINT fk_covid_country
FOREIGN KEY (country)
REFERENCES country(country);


USE covid19;

-- ============================================================
-- COVID-19 DATA ANALYSIS PROJECT
-- Dataset: GLOBAL_COVID19_Cleaned_Data
-- ============================================================

-- ==========================================
-- 1. View All Countries
-- Display all countries available.
-- ==========================================

SELECT *
FROM Country;

-- ==========================================
-- 2. Total Number of Countries
-- ==========================================

SELECT COUNT(*) AS Total_Countries
FROM Country;

-- ==========================================
-- 3. Total Confirmed Cases Worldwide
-- ==========================================

SELECT SUM(Confirmed) AS Total_Confirmed
FROM countrywise;

-- ==========================================
-- 4. Total Deaths Worldwide
-- ==========================================

SELECT SUM(Deaths) AS Total_Deaths
FROM countrywise;

-- ==========================================
-- 5. Total Recovered Cases Worldwide
-- ==========================================

SELECT SUM(Recovered) AS Total_Recovered
FROM countrywise;

-- ==========================================
-- 6. Total Active Cases Worldwide
-- ==========================================

SELECT SUM(Active) AS Total_Active
FROM countrywise;

-- ==========================================
-- 7. Global Recovery Rate
-- ==========================================

SELECT
ROUND((SUM(Recovered)/SUM(Confirmed))*100,2) AS Recovery_Rate
FROM countrywise;

-- ==========================================
-- 8. Global Death Rate
-- ==========================================

SELECT
ROUND((SUM(Deaths)/SUM(Confirmed))*100,2) AS Death_Rate
FROM countrywise;

-- ==========================================
-- 9. Top 10 Countries by Confirmed Cases
-- ==========================================

SELECT
c.Country,
cw.Confirmed
FROM Country c
JOIN countrywise cw
ON c.Country = cw.Country
ORDER BY cw.Confirmed DESC
LIMIT 10;

-- ==========================================
-- 10. Top 10 Countries by Deaths
-- ==========================================

SELECT
c.Country,
cw.Deaths
FROM Country c
JOIN countrywise cw
ON c.Country = cw.Country
ORDER BY cw.Deaths DESC
LIMIT 10;

-- ==========================================
-- 11. Top 10 Countries by Recovered Cases
-- ==========================================

SELECT
c.Country,
cw.Recovered
FROM Country c
JOIN countrywise cw
ON c.Country = cw.Country
ORDER BY cw.Recovered DESC
LIMIT 10;

-- ==========================================
-- 12. Top 10 Countries by Active Cases
-- ==========================================

SELECT
Country,
Active
FROM countrywise
ORDER BY Active DESC
LIMIT 10;

-- ==========================================
-- 13. Recovery Percentage by Country
-- ==========================================

SELECT
Country,
Confirmed,
Recovered,
Recovery_Percentage
FROM countrywise
WHERE Confirmed > 100000
ORDER BY Recovery_Percentage DESC;

-- ==========================================
-- 14. Death Percentage by Country
-- ==========================================

SELECT
Country,
Confirmed,
Deaths,
Death_Percentage
FROM countrywise
WHERE Confirmed > 100000
ORDER BY Death_Percentage DESC;

-- ==========================================
-- 15. Countries Having More Than 1 Million Cases
-- ==========================================

SELECT
Country,
Confirmed
FROM countrywise
WHERE Confirmed > 1000000
ORDER BY Confirmed DESC;

-- ==========================================
-- 16. Daily Global COVID Cases
-- ==========================================

SELECT
Date,
Confirmed,
Recovered,
Deaths,
Active
FROM daywise
ORDER BY Date;

-- ==========================================
-- 17. Monthly Confirmed Cases
-- ==========================================

SELECT
YEAR(Date) AS Year,
MONTH(Date) AS Month,
SUM(Confirmed) AS Total_Confirmed
FROM daywise
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Year, Month;

-- ==========================================
-- 18. Yearly Confirmed Cases
-- ==========================================

SELECT
YEAR(Date) AS Year,
SUM(Confirmed) AS Total_Confirmed
FROM daywise
GROUP BY YEAR(Date)
ORDER BY Year;

-- ==========================================
-- 19. Daily New Cases Using Window Function
-- ==========================================

SELECT
Date,
Confirmed,
Confirmed -
LAG(Confirmed) OVER(ORDER BY Date) AS New_Cases
FROM daywise;

-- ==========================================
-- 20. Running Total of Confirmed Cases
-- ==========================================

SELECT
Date,
Confirmed,
SUM(Confirmed)
OVER(ORDER BY Date) AS Running_Total
FROM daywise;

-- ==========================================
-- 21. 7-Day Moving Average of Confirmed Cases
-- ==========================================

SELECT
Date,
Confirmed,
AVG(Confirmed)
OVER(
ORDER BY Date
ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
) AS Moving_Average
FROM daywise;

-- ==========================================
-- 22. Rank Countries by Confirmed Cases
-- ==========================================

SELECT
Country,
Confirmed,
RANK() OVER(ORDER BY Confirmed DESC) AS Country_Rank
FROM countrywise;

-- ==========================================
-- 23. Dense Rank Countries by Deaths
-- ==========================================

SELECT
Country,
Deaths,
DENSE_RANK() OVER(ORDER BY Deaths DESC) AS Death_Rank
FROM countrywise;

-- ==========================================
-- 24. Countries Above Average Confirmed Cases
-- (Using Common Table Expression)
-- ==========================================

WITH AvgCases AS
(
SELECT AVG(Confirmed) AS Avg_Confirmed
FROM countrywise
)

SELECT
Country,
Confirmed
FROM countrywise
WHERE Confirmed >
(
SELECT Avg_Confirmed
FROM AvgCases
);

-- ==========================================
-- 25. Country with Maximum Confirmed Cases
-- ==========================================

SELECT
Country,
Confirmed
FROM countrywise
WHERE Confirmed =
(
SELECT MAX(Confirmed)
FROM countrywise
);

-- ==========================================
-- 26. Top 10 Countries by Total Vaccine Doses
-- ==========================================

SELECT
Country,
total_doses_administered
FROM Vaccination
ORDER BY total_doses_administered DESC
LIMIT 10;

-- ==========================================
-- 27. Vaccination Progress by Country
-- ==========================================

SELECT
Country,
population_vaccinated_percent,
population_fully_vaccinated_percent
FROM Vaccination
ORDER BY population_fully_vaccinated_percent DESC;

-- ==========================================
-- 28. COVID Cases and Vaccination Analysis
-- ==========================================

SELECT
cw.Country,
cw.Confirmed,
cw.Recovered,
cw.Deaths,
cw.Active,
v.total_doses_administered,
v.population_vaccinated_percent,
v.population_fully_vaccinated_percent
FROM countrywise cw
JOIN Vaccination v
ON cw.Country = v.Country
ORDER BY cw.Confirmed DESC;

-- ==========================================
-- 29. Top 10 Countries by Fully Vaccinated Population
-- ==========================================

SELECT
Country,
population_fully_vaccinated_percent
FROM Vaccination
ORDER BY population_fully_vaccinated_percent DESC
LIMIT 10;

-- ==========================================
-- 30. Vaccine Details with Source Information
-- ==========================================

SELECT
Country,
vaccines,
last_observation_date,
source_name,
source_website
FROM Vaccinations_detail
ORDER BY Country;

-- ==========================================
-- END OF PROJECT
-- ==========================================