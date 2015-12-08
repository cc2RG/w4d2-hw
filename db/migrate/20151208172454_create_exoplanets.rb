class CreateExoplanets < ActiveRecord::Migration
  def change
    create_table :exoplanets do |t|
      t.string :name
      t.decimal :distance
      t.date :disc_year
      t.decimal :period

      t.timestamps null: false
    end
  end
end
