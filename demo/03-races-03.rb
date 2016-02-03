race=Race.find_by(n:"Oakland 10K")
race.events.build(o:0, n:"swim", d:1, u:"miles") 
race.events.build(o:1, n:"t1")                   
race.events.build(o:2, n:"bike", d:25, u:"miles") 
race.events.build(o:3, n:"t2")
race.events.build(o:4, n:"run", d:10, u:"kilometers") 
race.save
pp Race.find(race.id).attributes
race.events.order_by(:order.desc).skip(1).limit(3).each {|r| p r}; nil
race.events.first.parent.name
