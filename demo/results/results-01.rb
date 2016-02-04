Entrant.collection.name

entrant=Entrant.new(:bib=>0,:secs=>100.123)
entrant.overall=Placing.demongoize(:place=>10)
entrant.gender=Placing.demongoize(:name=>"M", :place=>8)
entrant.group=Placing.demongoize(:name=>"masters", :place=>5)
entrant.save
pp Entrant.find(entrant.id).attributes

Entrant.find(entrant.id).group.name
Entrant.find(entrant.id).gender.place
