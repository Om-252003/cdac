
import geopandas as gpd
import duckdb
import pandas as pd

# 1) Load India country polygon
countries = gpd.read_file(r"D:\datatset network\ne_50m_admin_0_countries\ne_50m_admin_0_countries.shp")
india_poly = countries[countries['ADMIN'] == 'India']

# 2) Load Ookla tiles
tiles = gpd.read_file(r"D:\datatset network\ookla-data\shapefiles\performance\type=fixed\year=2019\quarter=1\gps_fixed_tiles.shp")

# 3) Spatial join (tiles inside India)
india_tiles = gpd.sjoin(tiles, india_poly, how="inner", predicate="intersects")

# 4) Extract quadkeys
india_quadkeys = india_tiles['quadkey'].unique().tolist()

# 5) Create DuckDB connection
con = duckdb.connect()

# 6) Load quadkeys into DuckDB
con.register('india_keys', pd.DataFrame({'quadkey': india_quadkeys}))

# 7) Filter parquet inside DuckDB (RAM safe)
india_data = con.execute("""
    SELECT p.*
    FROM parquet_scan('D:/datatset network/ookla-data/parquet/performance/**/*.parquet') p
    JOIN india_keys ik ON p.quadkey = ik.quadkey
""").fetchdf()

# 8) Save to final file
india_data.to_parquet("india_only.parquet")

print("SUCCESS — Extracted India data:")
print(len(india_data), "rows saved in india_only.parquet")
