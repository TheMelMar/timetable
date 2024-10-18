CREATE TABLE IF NOT EXISTS StationEvents (
    train_id varchar(30),
    station_id int,    
    ankunftszeit TIMESTAMP,
    an_prognose TIMESTAMP,
    an_prognose_status varchar(10),
    abfahrtszeit TIMESTAMP,
    ab_prognose TIMESTAMP,
    ab_prognose_status varchar(10),
    ankunftsverspatung boolean,
    FOREIGN KEY (train_id) REFERENCES Trains(fahrt_bezeichner),
    FOREIGN KEY (station_id) REFERENCES Stations(bpuic)
)
