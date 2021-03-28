SELECT DISTINCT(ppl.state_code), ppl.shirt_or_hat, COUNT(ppl.shirt_or_hat)
FROM people ppl
JOIN states st
ON ppl.state_code=st.state_abbrev
WHERE ppl.shirt_or_hat='hat'
GROUP BY ppl.state_code;

SELECT st.division, ppl.team, COUNT(ppl.team)
FROM states st
JOIN people ppl
ON ppl.state_code=st.state_abbrev
GROUP BY st.division, ppl.team;
