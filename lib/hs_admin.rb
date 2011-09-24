require "active_support/dependencies"

module HS
  mattr_accessor :app_root
  
  def self.setup
    yield self
  end
end

require "hs_admin/engine"