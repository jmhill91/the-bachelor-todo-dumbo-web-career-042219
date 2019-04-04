def get_first_name_of_season_winner(data, season)
  winner=nil 
  data[season].each do |cont|
    if cont["status"] == "Winner"
      winner = cont["name"].split.first
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name=nil
  data.each do |season, cont|
    cont.each do |info|
      if info["occupation"]== occupation
        name = info["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
