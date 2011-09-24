Rails.application.routes.draw do
  resources :s3p_attachments, :module => "S3P", :controller => "attachment"
end