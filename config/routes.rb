Rails.application.routes.draw do
  get "hs_admin" , :controller => "HS/admin", :action => :login, :as => :hs_admin
  match "hs_admin_login" ,:controller => "HS/admin", :action => :create, :via => :post,  :as => :hs_admin_login
  get  "hs_admin_logout" => "HS/admin",:action => :destroy, :as => :hs_admin_logout
end