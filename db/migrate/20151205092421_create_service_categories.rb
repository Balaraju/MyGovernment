class CreateServiceCategories < ActiveRecord::Migration
  def change
    create_table :service_categories do |t|
    	t.string :category_type
    	t.integer :category_id
    	t.integer :service_id
    	t.text :process
    	t.decimal :fee
    	t.text :contact_info
    	t.string :website
    	t.text :req_documents
      t.timestamps null: false
    end
  end
end
