event=Event.new
event.validate
event.errors.messages

race=Race.new
event=race.events.build
race.validate
race.errors.messages

race.save

race=Race.create
event=race.events.create
Race.where(:id=>race.id).first.attributes

event=race.events.create(o:0,n:"swim")
pp Race.where(:id=>race.id).first.attributes
