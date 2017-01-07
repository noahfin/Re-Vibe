class Goal < ApplicationRecord
	has_many :action_steps
	belongs_to :user
end
