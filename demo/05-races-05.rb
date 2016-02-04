Race.create(:name=>"Yesterday's Challenge",:date=>Date.yesterday)
Race.create(:name=>"Today's Challenge",:date=>Date.current)
Race.create(:name=>"Tomorrow's Challenge",:date=>Date.tomorrow)

pp Race.past.where(:name=>{:$regex=>"Challenge"}).first.attributes

pp Race.upcoming.where(:name=>{:$regex=>"Challenge"}).pluck(:name, :date)
