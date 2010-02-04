class ClosedHelp < ActiveRecord::Base
  validates_uniqueness_of :helpable_id, :scope => [:helpable_type, :url]
end
