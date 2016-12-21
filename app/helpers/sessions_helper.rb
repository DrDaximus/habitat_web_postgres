module SessionsHelper
	def admin?
		if current_user && current_user.admin?
			true
		end
	end
end
