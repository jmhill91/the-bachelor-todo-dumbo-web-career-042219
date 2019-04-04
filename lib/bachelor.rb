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
  count= 0 
  data.each do |season, cont|
    cont.each do |info|
      if info["hometown"]==hometown
        count +=1 
      end
    end
  end
  count
end

def get_occupation(data, hometown)
    data.each do |season, cont|
      cont.each do |info|
        if info["hometown"]==hometown
        return info["occupation"]
        end
      end
    end
end

def get_average_age_for_season(data, season)
  count=0 
  ages=0 
  data[season].each do |cont|
   ages += cont["age"]
   count += 1 
 end 
 return (ages/ count)
end
