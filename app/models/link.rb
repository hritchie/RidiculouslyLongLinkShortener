class Link < ActiveRecord::Base
  attr_accessible :location, :shortcode

  validates :location, :shortcode, presence: true
end
