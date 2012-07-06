require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "create a link" do
    @link = Link.new location: 'rails is awesome'
    assert @link
  end

  test "link must have location" do
    @link = Link.new shortcode: 'codeshort'
    assert @link.invalid?, "link must have location"
  end

  test "link must have shortcode" do
    @link = Link.new location: 'loco'
    assert @link.invalid?, "link must have shortcode"
  end

  test "valid link should be valid" do
    @link = Link.new location: 'loco', shortcode: 'codeshort'
    assert @link.valid?, "valid link should be valid"
  end
end
