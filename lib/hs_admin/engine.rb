require 'action_controller'
require 'hs_admin/application_helper_extend'
require 'hs_admin/admin_query_helpers'

module HS
  class Engine < Rails::Engine
    engine_name :hs_admin
    
    initializer "hs_admin.helper" do
       ActionView::Base.send :include, HS::ApplicationHelperExtend
       ActionController::Base.send :include, HS::AdminQueryHelpers
       ActionView::Base.send :include, HS::AdminQueryHelpers
    end
    
    initializer "hs_admin.load_app_instance_data" do |app|
      HS.setup do |config|
        config.app_root = app.root  
      end  
    end
    
    initializer "hs_admin.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
    
  end
end