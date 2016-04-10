class User < ActiveRecord::Base
	
	has_one :occupation
	has_many :assignments
	has_many :roles, through: :assignments

	# ADDED -S.B., 04-03-16
#	scope :active, where(active: true)
	scope :active, -> {where(active: true) }
	scope :young, where("age < 20")
	scope :recent, order("created_at desc").limit(3)

	before_save :make_active

	def make_active
		if age > 20
			self.active = true
		end
	end
end
