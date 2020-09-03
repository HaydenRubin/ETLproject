select * from neflixshows;
select * from neflixratings;

--find tv shows' name, release year and category with rating higher than 7.5
select s.title,s.release_year,s.category,r.rating from neflixshows as s 
join neflixratings as r on s.title=r.title
where r.rating>=7.5;

--find tv shows in the Crime category along with their release year and rating (in descding order)
select s.title, s.release_year, r.rating from neflixshows as s 
join neflixratings as r on s.title=r.title
where s.category like '%Crime%'
order by r.rating desc;