class Event
  include Mongoid::Document
  
  field :o, as: :order, type: Integer
  field :n, as: :name, type: String
  field :d, as: :distance, type: Float
  field :u, as: :units, type: String
  
  embedded_in :parent, polymorphic: true, touch: true
  
  def self.distance_in_meters(unit)
    case unit
    when 'meters'     then multiplier = 1
    when 'kilometers' then multiplier = 1000
    when 'yards'      then multiplier = 0.9144
    when 'miles'      then multiplier = 1609.344
    else
      multiplier = nil
    end
    return multiplier
  end
  
  def meters
    multiplier = self.class.distance_in_meters(units)
    
    if distance.nil? or multiplier.nil?
      return nil
    else  
      return distance * multiplier 
    end
  end
  
  def miles
    if meters.nil?
      return nil
    else
      meters / self.class.distance_in_meters('miles')
    end
  end
  
  validates :name,
    presence: true
    
  validates :order,
    presence: true
end
