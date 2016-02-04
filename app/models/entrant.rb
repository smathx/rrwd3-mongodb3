class Entrant
  include Mongoid::Document
  include Mongoid::Timestamps
  
  store_in collection: "results" 
  
  field :bib, type: Integer
  field :secs, type: Float
  field :o, as: :overall, type: Placing
  field :gender, type: Placing
  field :group, type: Placing
  
  embeds_many :results, as: :entrant, class_name: "LegResult",
    order: [:"event.o".asc], after_add: :update_total
  
  embeds_one :race, class_name: "RaceRef"
  
  def the_race
    race.race
  end
  
  def update_total(result)
    self.secs = self.secs.nil? ? result.secs: self.secs += result.secs
  end
end
