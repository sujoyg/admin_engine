require 'haml'
require 'user_authentication'

module AdminEngine
  class Engine < Rails::Engine
    engine_name 'admin_engine'
    initializer 'admin_engine.load_config_initializers', :before=> :load_config_initializers do |app|
      app.config.railties_order = [UserAuthentication::Engine, :main_app, :all]
    end
  end
end
