class Show < ActiveRecord::Base

    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters 

    def actors_list
        my_actors = self.actors
        my_actors.map do |actor|
            actor.full_name
        end
    end
  
end