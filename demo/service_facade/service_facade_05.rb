upcoming_race_ids=racer.races.upcoming.pluck(:race).map {|r| r[:_id]}

race_ids=Race.where(:name=>{:$regex=>"A2$"}).map {|r| r.id}
pp Race.in(:id=>race_ids).pluck(:name, :date)

Race.upcoming.where(:name=>{:$regex=>"A2"}).pluck(:name,:date)

race1=Race.create(:name=>"Missed it A2",:date=>Date.yesterday)
race2=Race.create(:name=>"Going There A2",:date=>Date.tomorrow)
race2.create_entrant racer
race3=Race.create(:name=>"Thinking About It A2",:date=>Date.current+1.month)
Racer.find(racer.id).races.pluck(:"race.n")

Date.current
Race.upcoming_available_to(racer).where(:name=>{:$regex=>"A2"}).pluck(:name,:date)

Date.current
Race.not.upcoming_available_to(racer).where(:name=>{:$regex=>"A2"}).pluck(:name,:date)
