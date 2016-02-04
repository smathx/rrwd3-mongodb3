race=Race.where(:name=>"Oakland 10K").first
RaceRef.new(race.attributes.symbolize_keys.slice(:_id,:n,:date))
