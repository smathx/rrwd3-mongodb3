entrant=Entrant.new
result=entrant.results.build(:secs=>60.13)
result=entrant.results.build(:secs=>1600)
entrant.results.count
entrant.results.to_a.count
entrant.results[0]
pp entrant.results
