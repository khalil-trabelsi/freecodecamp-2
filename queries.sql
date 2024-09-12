#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT SUM(opponent_goals+winner_goals) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "SELECT AVG(winner_goals) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals), 2) FROM games")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT AVG(opponent_goals+winner_goals) FROM games")"


echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "SELECT Max(GREATEST(winner_goals, opponent_goals)) from games")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "SELECT SUM(total) from (SELECT count(game_id) as total  from games where winner_goals > 2 group by winner_id) as subquery")"


echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "SELECT name FROM teams inner join games on teams.team_id=games.winner_id where round='Final' and year=2018")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT name FROM teams inner join games on teams.team_id=games.opponent_id or  teams.team_id=games.winner_id where round='Eighth-Final' and year=2014 order by name")"


echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT DISTINCT(name) FROM teams inner join games on teams.team_id=games.winner_id order by name")"


echo -e "\nYear and team name of all the champions:"
echo "$($PSQL "SELECT year, name FROM teams inner join games on teams.team_id=games.winner_id where round='Final' order by name desc")"

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "SELECT name from teams where name Like 'Co%'")"
echo
