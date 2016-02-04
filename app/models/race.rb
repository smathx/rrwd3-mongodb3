class Race
  include Mongoid::Document
  include Mongoid::Timestamps
  
  embeds_many :events, as: :parent, order: [:order.asc]
  
  field :n, as: :name, type: String
  field :date, type: Date
  field :loc, as: :location, type: Address
  
  scope :upcoming, ->{ where(:date.gte => Date.current) }
  scope :past, ->{ where(:date.lt => Date.current) }
  
end
