class AddShortcodesToLinks < ActiveRecord::Migration
  def change
    add_column :links, :shortcode, :string
  end
end
