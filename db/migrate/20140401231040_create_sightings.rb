class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :date, :date
      t.column :location, :string
    end
  end
end
