class Show < ActiveRecord::Base
  belongs_to :actor
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.actors.collect do |actor|
      "#{actor.first_name} #{actor.last_name}"
    end
  end
end