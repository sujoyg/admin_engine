require 'haml'
require 'user_authentication'

module AdminEngine
  class Engine < Rails::Engine
    engine_name 'admin_engine'

    #initializer 'admin_engine.app_controller' do |app|
    #  ActiveSupport.on_load(:action_controller) do
    #    require File.expand_path('../../app/controllers/application_controller', __FILE__)
    #  end
    #end

    config.after_initialize do
      require File.expand_path('../../app/controllers/application_controller', __FILE__)
    end
  end
end
