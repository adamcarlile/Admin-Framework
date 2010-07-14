# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
	def render_flash
		flash.to_a.map { |v| content_tag("div", v[1], "id" => v[0], "class" => "flash") }
	end
  
end
