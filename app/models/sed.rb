class Sed < ActiveRecord::Base
	has_many :plays, dependent: :destroy 

	belongs_to :user 
end
