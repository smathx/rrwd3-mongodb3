class Placing
  
  attr_accessor :name, :place 

  # 'place' is an integer, the position in the event.
  def initialize(name=nil, place=nil)
    @name = name
    @place = place
  end

  def mongoize
    { :name => @name, :place => @place }
  end
        
  def self.mongoize(object) 
    case object
    when nil then 
      nil
      
    when Hash then 
      Placing.new(object[:name], object[:place]).mongoize

    when Placing then 
      object.mongoize
      
    # TODO: Check this - needed to pass flatten_attributes rq03  
    when String then 
      Placing.new(object).mongoize
      
    else
      raise "Unexpected object class '#{object.class.name}' for Placing.mongoize"
      object
    end
  end
  
  def self.demongoize(object)
    case object
    when nil then 
      nil
      
    when Hash then
      Placing.new(object[:name], object[:place])
      
    else
      raise "Unexpected object class '#{object.class.name}' for Placing.demongoize"
      object
    end
  end
        
  def self.evolve(object)
    mongoize object
  end
end
