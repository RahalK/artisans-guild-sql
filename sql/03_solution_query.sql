-- Step 1: Calculate the average value of masterpieces for each artisan
WITH AvgValues AS (
    SELECT artisan_id,
           AVG(value) AS avg_value   -- Compute the average value of all masterpieces per artisan
    FROM Masterpieces
    GROUP BY artisan_id            -- Group by artisan to get one average per artisan
),

-- Step 2: Filter masterpieces that meet certain quality criteria
Filtered AS (
    SELECT
        m.*,                          -- All columns from Masterpieces
        a.name,                        -- Artisan's name
        a.specialization,              -- Artisan's specialization
        v.avg_value,                   -- Average masterpiece value for this artisan
        m.rarity_score * m.technique_score AS composite_score  -- Calculate a composite score
    FROM Masterpieces m
    JOIN Artisans a ON a.artisan_id = m.artisan_id  -- Join to get artisan details
    JOIN AvgValues v ON v.artisan_id = m.artisan_id -- Join to get average value
    WHERE m.rarity_score >= 5       -- Only consider masterpieces with decent rarity
      AND m.technique_score >= 6    -- Only consider masterpieces with decent technique
      AND m.value > v.avg_value     -- Only masterpieces above the artisan's average value
),

-- Step 3: Rank the filtered masterpieces per artisan
Ranked AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY artisan_id      -- Rank within each artisan
               ORDER BY composite_score DESC,  -- Highest composite score first
                        value DESC,           -- If tie, higher value first
                        creation_year ASC     -- If still tied, older masterpiece first
           ) AS rn
    FROM Filtered
)

-- Step 4: Select the top-ranked masterpiece for each artisan
SELECT artisan_id,
       name,
       specialization,
       masterpiece_id,
       material,
       value,
       creation_year,
       composite_score
FROM Ranked
WHERE rn = 1                  -- Only take the top masterpiece per artisan
ORDER BY artisan_id;           -- Order results by artisan ID
