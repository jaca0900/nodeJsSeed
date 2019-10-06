DROP SCHEMA IF EXISTS CompanyManager;
CREATE SCHEMA CompanyManager;

USE CompanyManager;

CREATE TABLE IF NOT EXISTS company(
	id SERIAL PRIMARY KEY,
    nip INTEGER UNIQUE NOT NULL,
    company_name VARCHAR(60),
    create_at DATETIME,
    created_by BIGINT UNSIGNED,
    updated_at DATETIME,
    updated_by BIGINT UNSIGNED
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS person(
	id SERIAL PRIMARY KEY NOT NULL,
    first_name varchar(20) not null,
    last_name varchar(50) not null,
    company_id BIGINT UNSIGNED,
    create_at DATETIME,
    created_by BIGINT UNSIGNED,
    updated_at DATETIME,
    updated_by BIGINT UNSIGNED,
    FOREIGN KEY(company_id) REFERENCES company(id)
)ENGINE=InnoDB;