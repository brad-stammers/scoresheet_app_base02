json.extract! batting, :id, :batting_team, :overs, :runs, :wickets, :byes, :leg_byes, :inning_id, :created_at, :updated_at
json.url batting_url(batting, format: :json)
