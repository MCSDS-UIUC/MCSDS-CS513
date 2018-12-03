-- Switch on 'csv' model
.mode csv

-- Import data to 'Movies' table
.import tmdb_5000_movies-OpenRefine-Pandas-Processed.csv tbl_movies
select "check number of inserted/total records( should be 4803)"

-- Import data to 'Credits' table
.import ../2-openrefine/tmdb_5000_credits-OpenRefineProcessed.csv tbl_credits
select "check number of inserted/total records( should be 4803)"
--delete from tbl_credits where movie_id='movie_id';

-- CourseProject/datarepo/3-pandas/tmdb_5000_credits-cast-OpenRefine-Pandas-Processed.csv
-- Import data to 'Credit-Cast' table
.import ../3-pandas/tmdb_5000_credits-cast-OpenRefine-Pandas-Processed.csv tbl_credits_cast
select "check number of inserted/total records( should be 4803)"
-- delete from tbl_credits_cast where cast_id='cast_id';


-- CourseProject/datarepo/3-pandas/tmdb_5000_credits-crew-OpenRefine-Pandas-Processed.csv
-- Import data to 'Credit-Crew' table
.import ../3-pandas/tmdb_5000_credits-crew-OpenRefine-Pandas-Processed.csv tbl_credits_crew
select "check number of inserted/total records( should be 4803)"
--
