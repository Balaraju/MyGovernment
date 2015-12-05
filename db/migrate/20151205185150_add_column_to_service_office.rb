class AddColumnToServiceOffice < ActiveRecord::Migration
  def change
  	add_column :service_offices, :place_id, :integer
  end
end
