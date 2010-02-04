require "#{File.dirname(__FILE__)}/config/initializers/help_setting.rb"

ActionView::Base.send :include, ClosedHelpsHelper

require 'helpify'
ActiveRecord::Base.send(:include, Helpify)

# Include hook code here
