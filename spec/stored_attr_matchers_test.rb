require 'test_helper'

class StoredAttrMatchersTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, StoredAttrMatchers
  end
end
