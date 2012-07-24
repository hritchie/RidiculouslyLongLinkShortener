class Link < ActiveRecord::Base
  attr_accessible :location, :shortcode

  validates :location, presence: true, format: { with: /[a-z0-9.\-]+[.][a-z]{2,4}/ }
  validates :shortcode, presence: true, uniqueness:true

end
