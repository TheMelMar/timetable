CREATE TABLE IF NOT EXISTS Trains (
    fahrt_bezeichner varchar(30) PRIMARY KEY, 
    betreiber_id varchar(5),
    betreiber_abk varchar(10),
    betreiber_name varchar(50),
    produkt_id varchar(10),
    linien_id int,
    linien_text varchar(30),
    umlauf_id varchar(40),
    verkehrsmittel_text varchar(10)
)

