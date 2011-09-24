require 'action_controller'
require 'hs_admin/application_helper_extend'
require 'hs_admin/admin_query_helpers'

module S3P
  class Engine < Rails::Engine
    engine_name :attach_s3p
    
    initializer "attach_s3p.helper" do
    end
    
    initializer "attach_s3p.load_app_instance_data" do |app|
      HS.setup do |config|
        config.app_root = app.root  
      end  
    end
    
    initializer "attach_s3p.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
    
  end
end