require 'rubygems'
require 'active_record'
require 'spec'

ActiveRecord::Base.establish_connection("adapter" => "sqlite3", "database" =>"test.sqlite3" )

load(File.dirname(__FILE__) + '/schema.rb')

require File.dirname(__FILE__) + '/../app/models/closed_help.rb'

require 'helpify'
ActiveRecord::Base.send(:include, Helpify)

class HelpableModel < ActiveRecord::Base
  helpify
end

class UnhelpableModel < ActiveRecord::Base
end


