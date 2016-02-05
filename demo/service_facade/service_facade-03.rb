race=Race.new
race[:next_bib]
entrant=race.create_entrant Racer.new
entrant.valid?
entrant.persisted?
race[:next_bib]
entrant.errors.messages
pp entrant.racer.errors.messages

race=Race.default; race.name="A Race"; race.date=Date.current; race.save
racer=Racer.where(:"info.fn"=>"cat", :"info.ln"=>"inhat").first
racer.races.each {|r| r.delete }
racer=Racer.find(racer.id)

racer.races.count
race.entrants.count
race[:next_bib]

entrant=race.create_entrant racer
entrant.persisted?
entrant.valid?
entrant.bib
race[:next_bib]
entrant.results.pluck(:"event.n")
entrant.race_name
entrant.last_name
entrant.city
entrant.swim.event.distance

race=Race.find(race.id)
race.entrants.each {|r| p "#{r.bib}, #{r.racer.first_name}, #{r.racer.last_name}"}
racer=Racer.find(racer.id)
racer.races.each {|r| p "#{r.race.name}, #{r.race.date}, #{r.bib}"}
