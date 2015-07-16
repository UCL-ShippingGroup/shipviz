SELECT * FROM vessels5000k
WHERE mmsi IN (
    SELECT DISTINCT mmsi
    FROM vessels5000k, us_eca_no_continent
    WHERE 
        ST_WITHIN(vessels5000k.the_geom_webmercator, us_eca_no_continent.the_geom_webmercator)
        AND 
        us_eca_no_continent.first_fld LIKE '%Hawaiian Islands%'
        AND vessels5000k.time >= '2012-04-01' AND vessels5000k.time <= '2012-07-31'
)
