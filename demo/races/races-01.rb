point=Point.demongoize(:type=>"Point", :coordinates=>[-122.27, 37.8])
address=Address.demongoize(:city=>"Oakland", :state=>"CA", :loc=>point.mongoize)
race=Race.new(name:"Oakland 10K", date:Date.current, location:address)
race.save
race=Race.create(n:"Oakland 10K", date:Date.current, loc:address)
pp Race.find(race.id).attributes
