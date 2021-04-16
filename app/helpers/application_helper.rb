module ApplicationHelper

	def admin

		AdminUser.exists?(email: current_user.email)

	end
end
