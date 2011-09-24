require "active_support/dependencies"

module S3P
  mattr_accessor :app_root
  
  def self.setup
    yield self
  end
end

require "attach_s3p/engine"