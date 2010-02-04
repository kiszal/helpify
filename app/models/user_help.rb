class UserHelp < ActiveRecord::Base
  belongs_to :user
  belongs_to :help
end
