class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors,through: :characters
  
  def actors_list
    self.characters.collect{|char| "#{char.actor.first_name} #{char.actor.last_name}"}
  end 
  
  
end