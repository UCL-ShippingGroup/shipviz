-- Convert list of POINT values for each vessel to LINESTRING in new table
CREATE TABLE ais_linestrings
AS (
    SELECT mmsi, 
        count(*) AS points_count, 
        ST_MakeLine(location::geometry order by time) 
    FROM (
        SELECT * 
        FROM ais_extended 
        WHERE location is not null
    ) 
    AS some_vessels_filtered 
    GROUP BY mmsi
);
