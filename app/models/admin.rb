module HS
  class Admin
    
    @@sessions = Array.new
    def self.ids
      return @@sessions
    end
    
    def self.authenticated?(id)
      @@sessions.include? id
    end
    
    def self.remove(id)
      @@sessions.delete id
    end  
    
    def self.add(id)
      @@sessions.push id unless self.authenticated? id
    end
    
    def self.correct_pass?(inc_pass)
      password.eql? inc_pass
    end
    
    private
    
    #returns the singleton password defined in this heroku instance
    def self.password
      ENV["HS_ADMIN_PASS"] || 'password'
    end
  end
end