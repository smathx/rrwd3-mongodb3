race2=Race.create(:name=>"Oakland 2K", :date=>Date.current, :loc=>race.loc)               
entrant1=Entrant.new(:bib=>1, :secs=>1100.23) {|r| r.build_race(race2.attributes.symbolize_keys.slice(:_id,:n,:date)); r.save }                 
entrant2=Entrant.new(:bib=>2, :secs=>1200.23) {|r| r.build_race(race2.attributes.symbolize_keys.slice(:_id,:n,:date)); r.save }                               

entrant1.race.name
entrant2.the_race.loc.city

race2.entrants.pluck(:bib)
race2.entrants.where(:bib=>1).first.secs

race2.delete
Entrant.in(:id=>[entrant1.id,entrant2.id]).exists?
