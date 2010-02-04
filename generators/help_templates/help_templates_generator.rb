class HelpTemplatesGenerator < Rails::Generator::Base
  attr_accessor   :template_names

  def initialize(runtime_args, runtime_options = {})
    super
    @template_names = help_names 
  end

  def manifest
    record do |m|
      m.directory 'app/views/helps'
     @template_names.each do |name|
        m.template( 
          "help_view.html.erb",                                                                                                        
          File.join('app/views/helps/', "_#{name}.html.erb"), :assigns => {:div_id => name}, :collision => :skip
        )          
      end
    end
  end
   
  private 

  def help_names 
    file_name = File.join(RAILS_ROOT, 'config', 'help_settings.yml')
    if File.exists?(file_name)
      help_partials = YAML.load_file(file_name)
      help_partials.to_a.collect{|a| a[1]}
    else 
      help_partials = []
    end 
  end
end
