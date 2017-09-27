module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
  	super || friendly_user
	end

  def friendly_user
		guest = GuestUser.new
		guest.name = "Friend User"
		guest.email = "guest@example.com"

		return guest
  end
end
