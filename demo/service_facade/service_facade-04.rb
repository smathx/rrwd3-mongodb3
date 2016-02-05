race1=Race.create(:name=>"Yesterday's Entrant",:date=>Date.yesterday) 
race2=Race.create(:name=>"Today's Entrant",:date=>Date.today)              
race3=Race.create(:name=>"Tomorrow's Entrant",:date=>Date.tomorrow)    
racer=Racer.create(:first_name=>"thing",:last_name=>"two",:gender=>"M",:birth_year=>1960)              
race1.create_entrant(racer)
race2.create_entrant(racer)
race3.create_entrant(racer)

pp Entrant.past.where(:"race.n"=>{:$regex=>"Entrant"}).first.attributes 
 
pp racer.races.upcoming.pluck(:race)
 
 