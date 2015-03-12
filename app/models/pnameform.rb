class Pnameform < ActiveRecord::Base
	belongs_to :user

	has_many :piece1s, dependent: :destroy  
	has_many :piece2s, dependent: :destroy  
	has_many :piece3s, dependent: :destroy  
	has_many :piece4s, dependent: :destroy  
	has_many :piece5s, dependent: :destroy  
	has_many :piece6s, dependent: :destroy  
	has_many :piece7s, dependent: :destroy  
	has_many :piece8s, dependent: :destroy  
	has_many :piece9s, dependent: :destroy  
	has_many :piece10s, dependent: :destroy  	
end
