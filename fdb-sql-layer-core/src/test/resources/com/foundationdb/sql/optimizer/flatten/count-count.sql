SELECT COUNT(*)+5 FROM (SELECT COUNT(DISTINCT c1) AS counted FROM t1) AS anon1