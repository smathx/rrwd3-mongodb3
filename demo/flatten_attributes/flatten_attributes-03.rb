["bib","first_name","race_name"].map {|prop| Entrant.new(:bib=>0,:first_name=>"thing",:race_name=>"123").send(prop)}
