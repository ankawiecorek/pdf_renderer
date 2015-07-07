require "prawn"
ActionController::Renderers.add :pdf do |filename, options|
	pdf = Prawn::Document.new
	pdf.text render_to_string({})
	send_data(pdf.render, filename: "contents.pdf",
		disposition: "attachment")
	
end

