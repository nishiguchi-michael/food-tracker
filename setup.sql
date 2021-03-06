CREATE TABLE log(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    food_name varchar(200) NOT NULL,
    calories REAL NOT NULL,
    fat REAL NOT NULL,
    protein REAL NOT NULL,
    carb REAL NOT NULL,
    date_eaten date NOT NULL,
    servings decimal NOT NULL,
    serving_unit text NOT NULL,
    meal varchar(200) NOT NULL,
    userId text NOT NULL,
    foodId text NOT NULL,
    uri text NOT NULL
);

CREATE TABLE userGoals (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    int weight_goal,
    int current_weight,
    int fat_goal,
    int protein_goal,
    text google_id

);

ALTER TABLE log ADD COLUMN userId text NOT NULL;
ALTER TABLE log ADD COLUMN carb decimal NOT NULL;

ALTER TABLE log ADD COLUMN date_eaten date NOT NULL;

ALTER TABLE log ADD COLUMN date_eaten DATE NOT NULL DEFAULT CURRENT_DATE;
ALTER TABLE log ALTER COLUMN date_eaten TYPE date NOT NULL DEFAULT CURRENT_DATE;

ALTER TABLE log ALTER COLUMN calories TYPE REAL;
ALTER TABLE log ALTER COLUMN fat TYPE REAL;
ALTER TABLE log ALTER COLUMN protein TYPE REAL;
ALTER TABLE log ALTER COLUMN carb TYPE REAL;
ALTER TABLE log ADD COLUMN serving_unit TYPE varchar(50) NOT NULL;
ALTER TABLE log ADD COLUMN serving_unit TEXT NOT NULL;
ALTER TABLE log ADD COLUMN foodId TEXT NOT NULL;
ALTER TABLE log ADD COLUMN uri TEXT NOT NULL;

INSERT INTO log (food_name, calories, fat, protein, date_eaten, servings, meal, userID) VALUES('bread', 10, 20, 30, '10/2/2021', 2, 'lunch', 123123123);

SELECT * FROM log WHERE userId = '104939860480852635549' ORDER BY date_eaten DESC;

-- SELECT * FROM log WHERE userId = '104939860480852635549' ORDER BY date_eaten DESC, CASE
-- WHEN code='breakfast' THEN 1
-- WHEN code='lunch' THEN 2
-- WHEN code='dinner' THEN 3
-- WHEN code='snack' THEN 4
-- ELSE 5
-- END;

SELECT * FROM log WHERE userId = '104939860480852635549' ORDER BY date_eaten DESC, meal='snack', meal='dinner', meal='lunch', meal='breakfast';