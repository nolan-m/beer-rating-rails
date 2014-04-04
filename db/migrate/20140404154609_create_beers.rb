class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.decimal :abv
      t.decimal :total_rating
      t.integer :region_id
      t.integer :type_id
      t.timestamps
    end


    create_table :regions do |t|
      t.string :name
    end

    create_table :types do |t|
      t.string :name
    end

    create_table :ratings do |t|
      t.integer :score
      t.string :review
    end

    create_table :beers_ratings do |t|
      t.integer :beer_id
      t.integer :rating_id
    end
  end
end
