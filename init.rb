require "#{File.dirname(__FILE__)}/config/initializers/help_settings.rb"

ActionView::Base.send :include, ClosedHelpsHelper

require 'helpify'
ActiveRecord::Base.send(:include, Helpify)

# Include hook code here
