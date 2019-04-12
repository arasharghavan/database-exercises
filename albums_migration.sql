USE codeup_test_db;


CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name  VARCHAR(100) NOT NULL,
    release_date INT,
    sales FLOAT,
    genre VARCHAR(100),
    PRIMARY KEY (id),
    #make sur there is no duplicate inputs
    unique (artist,name)
#     INDEX(YEAR)
);

