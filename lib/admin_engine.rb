require 'haml'
require 'user_authentication'

module AdminEngine
  class Engine < Rails::Engine
    engine_name 'admin_engine'

    config.after_initialize do
      require File.expand_path('../../app/controllers/application_controller', __FILE__)
      require File.expand_path('../../app/models/user', __FILE__)
    end
  end
end
