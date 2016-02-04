SwimResult.new(:event=>Event.new(distance:100,units:"meters"), :secs=>10)
SwimResult.new(:event=>Event.new(distance:1,units:"miles"), :secs=>160.934)

BikeResult.new(:event=>Event.new(distance:10,units:"miles"), :secs=>3600)
BikeResult.new(:event=>Event.new(distance:100,units:"kilometers"), :secs=>3600)

RunResult.new(:event=>Event.new(distance:1,units:"miles"), :secs=>240)
RunResult.new(:event=>Event.new(distance:10,units:"kilometers"), :secs=>6000)

s=SwimResult.new(event:Event.new(d:100,u:"meters"))
s.secs=1000
s
