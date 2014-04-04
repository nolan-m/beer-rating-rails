class AddSlug < ActiveRecord::Migration
  def change
    add_column :beers, :slug, :string
    add_column :regions, :slug, :string
    add_column :types, :slug, :string
  end
end
