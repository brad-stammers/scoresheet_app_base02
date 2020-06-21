json.extract! inning, :id, :home, :away, :ground, :start_date, :end_date, :competition, :round, :umpire_01, :umpire_02, :batting_team, :bowling_team, :inning_no, :created_at, :updated_at
json.url inning_url(inning, format: :json)
