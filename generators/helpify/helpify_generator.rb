class HelpifyGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.migration_template "create_closed_helps.rb", "db/migrate"
      m.directory "config"
      m.template "help_settings.yml", "config/help_settings.yml"
    end
  end
  
  def file_name
    "create_closed_helps" 
  end 
end
