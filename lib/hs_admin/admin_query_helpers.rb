module HS
  module AdminQueryHelpers

    def hs_admin_login
      HS::Admin.add sesh_id
    end

    def hs_admin_logout
      HS::Admin.remove sesh_id
    end

    def hs_admin?
      HS::Admin.authenticated? sesh_id
    end

    private

    def sesh_id
      request.session_options[:id] 
    end

  end
end