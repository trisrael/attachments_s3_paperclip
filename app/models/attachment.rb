module S3P
  class Attachment < ActiveRecord::Base
    def self.s3_config
      @@s3_config ||= {
        :access_key_id => ENV["AWS_ACCESS_KEY"], 
        :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"],
        :bucket => ENV["S3P_BUCKET"],
        :endpoint => "s3.amazonaws.com"
        
        }
    end
    
    has_attached_file :attachee,
      :styles => {
      :thumb => [">75x"],
      :medium => [">600x"], 
      :large => [">1000x"]
    },                    
      :storage => :aws,
      :s3_credentials => {
      :access_key_id => self.s3_config['access_key_id'],
      :secret_access_key => self.s3_config['secret_access_key'],
      :endpoint => self.s3_config['endpoint']
    },
      :s3_bucket => self.s3_config['bucket'],
      :s3_acl => :public_read,
      :s3_protocol => 'http',
      :path => "s3p_attachments/:id/:style/:attachee_file_name"
  end
end
