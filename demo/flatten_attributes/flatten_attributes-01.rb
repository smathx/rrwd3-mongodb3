racer=Racer.new(:first_name=>"thing",:last_name=>"two",:gender=>"M",:birth_year=>1960)
racer.info.last_name
racer.last_name
racer.last_name="three"
racer.validate
racer.save
pp Racer.find(racer.id).attributes

racer=Racer.find(racer.id)
racer.city
racer.city="Oakland"
racer.state="CA"
racer.info.residence
racer.save
pp Racer.find(racer.id).attributes
