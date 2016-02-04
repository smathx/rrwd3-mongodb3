racer=Racer.where(:"info.fn"=>"cat", :"info.ln"=>"inhat").first
entrant=Entrant.find_by(:bib=>1)
entrant.create_racer(racer.info.attributes)
pp Entrant.find(entrant.id).attributes

racer.info
entrant.racer

entrant=Entrant.new          
racer=entrant.build_racer    
entrant.validate             
entrant.errors.messages      
pp racer.errors.messages
