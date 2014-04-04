class AddPicture < ActiveRecord::Migration
  def change
    add_attachment :beers, :picture
  end
end
