class ClosedHelpGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.migration_template "create_closed_helps.rb", "db/migrate"
    end
  end
  
  def file_name
    "create_closed_helps" 
  end 
end
