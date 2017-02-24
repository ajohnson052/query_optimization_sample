class InitialTableStructure < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state
    end

    create_table :restaurants do |t|
      t.string :name
      t.integer :city_id
      t.boolean :delivery
      t.boolean :cash_only
    end

    create_table :theaters do |t|
      t.string :name
      t.integer :city_id
    end

    create_table :menu_items do |t|
      t.integer :restaurant_id
      t.string :description
      t.integer :price
    end

    create_table :shows do |t|
      t.integer :theater_id
      t.string :description
      t.integer :price
    end
  end
end
