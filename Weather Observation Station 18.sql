DECLARE
    @a AS NUMERIC(15,8),
    @b AS NUMERIC(15,8),
    @c AS NUMERIC(15,8),
    @d AS NUMERIC(15,8),
    @ManhattanX AS NUMERIC(15,8),
    @ManhattanY AS NUMERIC(15,8),
    @distance1 AS NUMERIC(15,8),
    @distance2 AS NUMERIC(15,8);
SET @ManhattanX = 40.776676;
SET @ManhattanY = 73.971321;
SET @a = (SELECT MIN(LAT_N) FROM STATION);
SET @b = (SELECT MIN(LONG_W) FROM STATION);
SET @c = (SELECT MAX(LAT_N) FROM STATION);
SET @d = (SELECT MAX(LONG_W) FROM STATION);
SET @distance1 = SQRT((POWER((@ManhattanX-@a), 2))+(POWER((@ManhattanY-@c), 2)));
SET @distance2 = SQRT((POWER((@ManhattanX-@b), 2))+(POWER((@ManhattanY-@d), 2)));
SELECT CAST(ROUND(@distance1, 4) AS NUMERIC(10, 4));
SELECT CAST(ROUND(@distance2, 4) AS NUMERIC(10, 4));