json.success true
json.service @service
json.service_level @service_level
json.categories @categories.each do |category|
	json.name "#{@service.name} - #{Service.level_name(category.category_type, category.category_id)}"
    json.link service_category_path(category.id)	
end