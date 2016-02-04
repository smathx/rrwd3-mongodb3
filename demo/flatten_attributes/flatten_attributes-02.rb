race=Race.new
race.swim
race.bike_distance
race.run_distance=222
pp race.events.to_a

race=Race.default
race.save
pp Race.find(race.id).attributes

Race.new(city:"LA",state:"CA").tap {|race|
      ["swim_order","t1","bike_distance","t2","run_units","city","state"].map {|event|
        pp race.send(event)
     }
   }
