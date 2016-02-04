entrant=Entrant.new
race=Race.new.tap {|race| ["swim","t1"].each {|event|race.send(event)}}
entrant.swim=race.swim
entrant.t1=race.t1

entrant.swim_secs=1000
entrant.t1_secs=100
entrant.secs
pp entrant.results.to_a

entrant.swim_pace_100
entrant.swim_secs
