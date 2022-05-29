select 
TOP(1)
    CONVERT( DECIMAL(10,4),  long_w)
from station
group BY LAT_N,LONG_W
HAVING MAX(LAT_N)< 137.2345
ORDER BY LAT_N DESC