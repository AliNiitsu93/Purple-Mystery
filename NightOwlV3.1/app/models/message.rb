class Message < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	def to_param
		"#{id} #{title}".parameterize
	end
	
end
