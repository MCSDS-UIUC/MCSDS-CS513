
-- Data load integrity
select count(*) from tbl_movies; --4803
select count(*) from tbl_credits; --4803
select count(*) from tbl_credits_cast; --106257
select count(*) from tbl_credits_crew; --129581

-- Checking all movie_ids are unique in the movie table(tbl_movies)
select id, count(id) as cnt from tbl_movies group by id having cnt>1;

-- Check if release data is greater than today's date. Check the corresponding movie-status too
select id, original_title, release_date,status from tbl_movies where release_date > '2018-11-25';
-- 0 records found

-- Check if same cast_id is used for differnt casts for any movie ( ref table tbl_credits_cast )
select movie_id, cast_id, count(*) as cnt from tbl_credits_cast group by movie_id, cast_id having cnt>1;

--movie_id    cast_id     cnt
------------  ----------  ----------
--116741      45          3
--116741      50          2
--116741      51          2
--116741      54          2
--116741      58          2
--116741      82          2
--116741      83          2
--116741      89          2
--116741      91          2
--116741      107         2
--226857      39          2
--226857      41          2
--226857      42          2
--294254      15          4
--339984      25          2
--339984      35          2
--347969      32          2
--347969      48          2
--347969      49          2
--347969      59          2
--347969      61          2

-- Foreign Key constraint check
select movie_id, title from tbl_credits where movie_id not in (select id from tbl_movies);
select id from tbl_movies where id not in (select movie_id from tbl_credits);