entrant=Entrant.new
result=entrant.results.build(:secs=>60.13)
entrant.save
entrant.errors.messages
result.errors.messages

race=Race.upcoming.where(:"events.n"=>"t1",:"events.n"=>"t2").first
event=race.events.where(:name=>"t1").first
result.build_event(event.attributes)
entrant.validate
entrant.save

event=race.events.where(:name=>"t2").first
entrant.results.create(:event=>event, :secs=>45)
pp Entrant.find(entrant.id).attributes

entrant.results.pluck(:"event.o")
entrant.results.order_by(:"event.o".desc).pluck(:"event.o")
entrant.results.order_by(:"event.o".asc).pluck(:"event.o")
