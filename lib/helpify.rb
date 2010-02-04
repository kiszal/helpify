# Helpify
module Helpify
  def self.included(base)
    base.extend ClassMethods  
  end

  module ClassMethods
    def helpify
      has_many :closed_helps
      include InstanceMethods
    end
  end
   
  module InstanceMethods
    def wants_help_on?(key)
      ClosedHelp.find(:all, 
         :conditions => ["helpable_id = ? and  helpable_type = ? and url = ?", id, self.class.name, key]).empty? ? true : false 
    end 
  end

end

