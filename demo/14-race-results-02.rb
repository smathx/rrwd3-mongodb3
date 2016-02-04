entrant=Entrant.new {|r| r.build_race(race.attributes.symbolize_keys.slice(:_id,:n,:date)); r.save }
pp entrant.attributes
