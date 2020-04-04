class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show 
  
  def say_that_thing_you_say
    
    "#{self.name} always says: #{self.catchphrase}"
  end 
  
  def build_show(name)
    self.new(name)
  end 
    
  def chain_build
  end 
  
  
end