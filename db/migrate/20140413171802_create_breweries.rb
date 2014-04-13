class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
    	t.string :name
    	t.integer :region_id
    	t.string :slug
      t.timestamps
    end

    remove_column :beers, :region_id

    


  end
end
