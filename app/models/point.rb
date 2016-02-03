class Point
  attr_accessor :longitude, :latitude

  def initialize(lng=nil, lat=nil)
    @longitude = lng
    @latitude = lat
  end

  def mongoize
    { :type => 'Point', :coordinates => [@longitude, @latitude] }
  end
  
  def self.mongoize(object) 
    case object
    when nil then 
      nil
      
    when Hash then 
      if object[:type] == 'Point'
        Point.new(object[:coordinates][0], object[:coordinates][1]).mongoize
      else
        raise "Unexpected Hash object type '#{object[:type]}' for Point.mongoize"
        object
      end
      
    when Point then 
      object.mongoize
      
    else
      raise "Unexpected object class '#{object.class.name}' for Point.mongoize"
      object
    end
  end
  
  def self.demongoize(object)
    case object
    when nil then
      nil
      
    when Hash then
      if object[:type] == 'Point'
        Point.new(object[:coordinates][0], object[:coordinates][1])
      else
        raise "Unexpected Hash object type '#{object[:type]}' for Point.demongoize"
        object
      end
    
    else
      raise "Unexpected object class '#{object.class.name}' for Point.demongoize"
      object
    end
  end

  def self.evolve(object)
    mongoize object
  end
end
