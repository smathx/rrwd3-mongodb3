entrant=Entrant.create                        
entrant.secs
entrant.created_at
entrant.updated_at
entrant.changed?

entrant.results << SwimResult.new(:event=>Event.new(o:0,n:"swim",distance:1,units:"miles"), :secs=>3600)
entrant.changed?
entrant.secs                   
entrant.updated_at

entrant.save
entrant.changed?  
entrant.updated_at

entrant.results << BikeResult.new(:event=>Event.new(o:2,n:"bike",distance:100,units:"kilometers"), :secs=>3600)             
entrant.secs
entrant.results << RunResult.new(:event=>Event.new(o:4,n:"run",distance:10,units:"kilometers"), :secs=>6000)
entrant.secs

entrant.changed?
entrant.updated_at
entrant.save
entrant.updated_at

pp Entrant.find(entrant.id).attributes
