SELECT *
FROM donor_data;

SELECT *
FROM donation_data

---How much is the total donation?
SELECT sum(donation)
FROM donation_data;

---What is the total donation by gender?
SELECT gender,sum(donation)
FROM donation_data
GROUP BY gender;

---Show total donation and total number of donation by gender
SELECT gender,sum(donation), COUNT(donation)
FROM donation_data
GROUP BY gender;

---Total donation made by frequency of donation
SELECT SUM("donation_data". donation),"donor_data". donation_frequency
FROM "donation_data"
JOIN "donor_data"
ON donation_data. id = donor_data. id
GROUP BY donation_frequency;

---Total donation and number of donation by Job field.
SELECT job_field,sum(donation), count(donation)
FROM donation_data
GROUP BY job_field;

---Total donation and number of donation above $200
SELECT sum(donation), count(donation)
FROM donation_data
WHERE donation >200;

---Total donation and number of donation below $200
SELECT SUM(donation),COUNT(donation)
FROM donation_data
WHERE donation < 200;

---Which top 10 states contributes the highest donation?
SELECT sum(donation),state
FROM donation_data
GROUP BY state
ORDER BY SUM(donation) desc
LIMIT 10;


---Which 10 states contributes the least donation
SELECT state, SUM(donation)
FROM donation_data
GROUP BY state
ORDER BY SUM(donation)
LIMIT 10;


---What are the top 10 cars driven by the highest donors?
SELECT donor_data. car, sum(donation_data . donation)
FROM donor_data
JOIN donation_data
ON donor_data . id = donation_data . id
GROUP BY car
ORDER BY SUM(donation) desc
LIMIT 10;

































