racer=Racer.where(:"info.fn"=>"cat", :"info.ln"=>"inhat").first
racer.races.to_a
