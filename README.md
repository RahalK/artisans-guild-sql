# Artisans' Guild SQL Challenge

## Table of Contents
- [Overview](#overview)  
- [Objective](#objective)  
- [Data](#data)  
- [Approach](#approach)  
- [Skills](#skills)  
- [Technical Tools](#technical-tools)  

---

## Overview
This project is a **SQL Server challenge** designed to showcase complex query writing, data modeling, and problem-solving skills. The task focuses on identifying the best masterpiece for each artisan based on multiple criteria including rarity, technique, value, and creation year.

---

## Objective
Write a SQL query that determines **the single best masterpiece per artisan** according to these rules:

1. `rarity_score ≥ 5`  
2. `technique_score ≥ 6`  
3. Value above the artisan’s **average** masterpiece value  
4. Highest composite score: composite_score = rarity_score * technique_score
5. If tied → select the highest value  
6. If still tied → select the oldest creation_year

---

## Data
The challenge uses two tables:

- **Artisans** — contains artisan information including name, specialization, skill level, and country.  
- **Masterpieces** — contains artworks with details such as material, rarity_score, technique_score, value, and creation_year.

The repository includes scripts to create these tables and populate them with a **sample dataset**.

---

## Approach
The solution requires:

- Filtering masterpieces based on rarity and technique scores  
- Comparing each masterpiece’s value against the artisan’s average  
- Calculating a **composite score** using rarity and technique  
- Ranking masterpieces per artisan using **window functions and ROW_NUMBER**  
- Selecting the top-ranked masterpiece for each artisan

---

## Skills
This challenge demonstrates:

- Writing **complex SQL queries**  
- Using **window functions** and **CTEs**  
- Advanced **filtering and ranking logic**  
- Query **optimization** and clean data modeling  

---

## Technical Tools
- **SQL Server** (any recent version)  
- **SQL Server Management Studio (SSMS)** or an online SQL platform  
- GitHub for project organization and version control




