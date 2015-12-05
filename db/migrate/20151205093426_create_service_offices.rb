class CreateServiceOffices < ActiveRecord::Migration
  def change
    create_table :service_offices do |t|
    	t.decimal :lat
    	t.decimal :lng
    	t.text :address
    	t.integer :state_id
    	t.integer :district_id
    	t.integer :municipality_id
    	t.integer :service_id 
      t.timestamps null: false
    end
  end
end
