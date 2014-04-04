class AddPUrl < ActiveRecord::Migration
  def change
    add_column :beers, :p_url, :text
  end
end
