module DefaultPageContent
	extend ActiveSupport::Concern

	included do
		before_action :set_site_title
	end

	def set_site_title
	  	@page_title = "Tevin Mantock | Software Engineer"
  	end
  end