module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
  		super || friendly_user
  	end

  	def friendly_user
  		OpenStruct.new(
  			name: "Friend User",
  			firstname: "Friend",
  			lastname: "User",
  			email: "friend@example.com"
  		)
  	end
end