-- Creating tables for COVID
CREATE TABLE cases (
     fips VARCHAR(5) NOT NULL,
     case_state VARCHAR(2) NOT NULL,
	 case_county VARCHAR(40) NOT NULL,
	 case_tot int,
	 case_pop_pct int,
     PRIMARY KEY (fips)
);

CREATE TABLE vaccination (
	 fips VARCHAR(5) NOT NULL,
	 recip_state VARCHAR(2) NOT NULL,
	 recip_county VARCHAR(40) NOT NULL,
	 complete_tot int,
	 complete_pop_pct int,
FOREIGN KEY (fips) REFERENCES cases (fips),
	 PRIMARY KEY (fips)
);

CREATE TABLE population (
	 fips VARCHAR(5) NOT NULL,
	 pop_state VARCHAR(2) NOT NULL,
	 pop_county VARCHAR(40) NOT NULL,
	 population int,
FOREIGN KEY (fips) REFERENCES cases (fips),
	 PRIMARY KEY (fips)
);