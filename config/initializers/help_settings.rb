file_name = File.join(RAILS_ROOT, 'config', 'help_settings.yml')
if File.exists?(file_name)
  ::HELP_SETTING = YAML.load_file(file_name)
end

