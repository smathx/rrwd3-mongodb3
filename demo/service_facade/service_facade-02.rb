pp (1943..2003).step(10).map {|yr| Race.new(:date=>Date.new(2010)).get_group(Racer.new(:gender=>"M", :birth_year=>yr)).name}
