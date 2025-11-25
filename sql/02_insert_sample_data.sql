-- Insert sample artisans into the Artisans table
-- Each row represents a different artisan with their unique ID, name, specialization, skill level, and country
INSERT INTO Artisans (artisan_id, name, specialization, skill_level, country) VALUES
(1, 'Elena Voss', 'glasswork', 9, 'Germany'),     -- Skilled glasswork artisan from Germany
(2, 'Marco Liu', 'sculpture', 8, 'Italy'),       -- Sculptor from Italy
(3, 'Sophia Rey', 'painting', 7, 'Spain'),       -- Painter from Spain
(4, 'Takumi Ito', 'woodwork', 10, 'Japan'),      -- Master woodworker from Japan
(5, 'Ana Moreira', 'ceramics', 6, 'Portugal'),   -- Ceramic artist from Portugal
(6, 'David Clarke', 'metalwork', 8, 'UK'),       -- Metalwork artisan from the UK
(7, 'Mia Laurent', 'glasswork', 7, 'France'),    -- Glasswork artisan from France
(8, 'Yara Nader', 'jewelry', 9, 'Egypt'),        -- Jewelry artisan from Egypt
(9, 'Hugo Stein', 'sculpture', 8, 'Austria'),    -- Sculptor from Austria
(10, 'Lina Chen', 'painting', 7, 'China');       -- Painter from China

-- Insert sample masterpieces into the Masterpieces table
-- Each row represents a masterpiece linked to an artisan, with material, rarity, technique score, value, and creation year
INSERT INTO Masterpieces (masterpiece_id, artisan_id, material, rarity_score, technique_score, value, creation_year) VALUES
(1, 1, 'crystal', 8, 9, 9500, 1998),    -- Masterpiece by Elena Voss, high skill crystal piece
(2, 1, 'glass', 6, 6, 7000, 2005),      -- Another work by Elena Voss, glass material
(3, 1, 'crystal', 7, 7, 8900, 2010),    -- Third masterpiece by Elena Voss
(4, 2, 'marble', 7, 9, 12000, 2005),    -- Marco Liu's marble sculpture
(5, 2, 'stone', 5, 6, 6500, 2012),      -- Stone sculpture by Marco Liu
(6, 2, 'marble', 8, 8, 11000, 1995),    -- Another marble piece by Marco Liu
(7, 3, 'gold', 9, 8, 8700, 1992),       -- Sophia Rey's gold masterpiece
(8, 3, 'canvas', 4, 6, 4000, 2018),     -- Painting on canvas by Sophia Rey
(9, 3, 'gold', 9, 6, 7300, 2001),       -- Another gold work by Sophia Rey
(10, 4, 'cedar', 6, 9, 9000, 1988),     -- Takumi Ito woodwork in cedar
(11, 4, 'oak', 5, 6, 5500, 2003),       -- Oak work by Takumi Ito
(12, 4, 'mahogany', 7, 8, 12000, 1999), -- Mahogany masterpiece by Takumi Ito
(13, 5, 'clay', 5, 6, 3000, 2016),      -- Ana Moreira ceramic clay piece
(14, 5, 'porcelain', 8, 8, 6200, 2008), -- Porcelain masterpiece by Ana Moreira
(15, 6, 'iron', 5, 7, 5200, 2010),      -- David Clarke metalwork in iron
(16, 6, 'steel', 6, 8, 7800, 2002),     -- Steel work by David Clarke
(17, 6, 'bronze', 7, 8, 8400, 1994),    -- Bronze masterpiece by David Clarke
(18, 7, 'glass', 6, 7, 6400, 2011),     -- Mia Laurent glass piece
(19, 7, 'crystal', 8, 9, 10200, 1997),  -- Crystal masterpiece by Mia Laurent
(20, 8, 'gold', 9, 10, 15000, 2001),    -- High-value gold piece by Yara Nader
(21, 8, 'silver', 6, 7, 5400, 2020),    -- Silver jewelry by Yara Nader
(22, 8, 'platinum', 10, 9, 18000, 1999),-- Platinum masterpiece by Yara Nader
(23, 9, 'marble', 7, 8, 13000, 1990),   -- Hugo Stein marble sculpture
(24, 9, 'stone', 5, 6, 4800, 2012),     -- Stone sculpture by Hugo Stein
(25, 10, 'canvas', 5, 7, 5000, 2007),   -- Painting by Lina Chen
(26, 10, 'gold', 8, 8, 9400, 1995),     -- Gold masterpiece by Lina Chen
(27, 10, 'silk', 6, 6, 6200, 2018);     -- Silk artwork by Lina Chen
