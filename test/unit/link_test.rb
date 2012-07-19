require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "create a link" do
    @link = Link.new location: 'http://www.bostonrb.org', shortcode: 'sc'
    assert @link.valid?
  end

  test "link must have location" do
    @link = Link.new shortcode: 'codeshort'
    assert @link.invalid?, "link must have location"
  end

  test "link must have shortcode" do
    @link = Link.new location: 'http://www.example.com'
    assert @link.invalid?, "link must have shortcode"
  end

  test "location must be valid url" do
    
  end

end
