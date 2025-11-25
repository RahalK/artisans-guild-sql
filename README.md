# Artisans' Guild SQL Challenge

This project contains a SQL Server challenge designed to showcase complex query writing, data modeling, and problem-solving. The task is to write a query using window functions, ranking, and filtering logic to identify the best masterpiece per artisan based on rarity, technique, value, and creation year.

## 📄 Challenge Summary
The challenge provides two tables:

- **Artisans** — information about artists, skill level, and specialization  
- **Masterpieces** — artworks with rarity, technique score, value, and creation year

### 🎯 Objective
Write a SQL query that identifies **the single best masterpiece for each artisan** based on:

1. `rarity_score ≥ 5`  
2. `technique_score ≥ 6`  
3. Value above the artisan’s **average** masterpiece value  
4. Highest composite score: composite_score = rarity_score * technique_score
5. If tied → highest value  
6. If still tied → oldest creation_year

### 📦 Included
- SQL table creation scripts  
- Sample dataset  
- Full solution query  

This challenge demonstrates:  
✔ Window functions  
✔ Ranking logic  
✔ CTEs  
✔ Advanced filtering  
✔ Query optimization  

