class Sed < ActiveRecord::Base
	has_many :plays, dependent: :destroy 
	has_many :scripts, dependent: :destroy
	
	belongs_to :user 
end
