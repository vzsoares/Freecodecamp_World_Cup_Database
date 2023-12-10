#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# FUNCS
function get_team_id() {
  GET_QUERY="SELECT team_id FROM teams WHERE name = '$1'"
  ID="$($PSQL "$GET_QUERY")"
  if [[ -z $ID ]]; then
    INSERT=$($PSQL "INSERT INTO teams(name) VALUES('$1')")
    ID=$($PSQL "$GET_QUERY")
  fi
  echo $ID
}
# END FUNCS

TRUNCATE="$($PSQL "TRUNCATE TABLE games,teams")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS; do
  if [[ $YEAR = 'year' ]]; then
    continue
  fi

  WINNER_ID=$(get_team_id "$WINNER")
  OPPONENT_ID=$(get_team_id "$OPPONENT")
  echo $OPPONENT_ID $WINNER_ID

  INSERT=$($PSQL "INSERT INTO games(round, year, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$ROUND',$YEAR,$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS)")
  echo $INSERT
done
