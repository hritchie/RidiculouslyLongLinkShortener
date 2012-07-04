require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "create a link" do
    @link = Link.new location: 'rails is awesome'
    assert @link
  end

end
