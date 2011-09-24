require 'test_helper'

class HerokuSingletonAdminTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, HS
  end
end
