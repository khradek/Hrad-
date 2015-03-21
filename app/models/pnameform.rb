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
	has_many :piece11s, dependent: :destroy 
	has_many :piece12s, dependent: :destroy
	has_many :piece13s, dependent: :destroy
	has_many :piece14s, dependent: :destroy
	has_many :piece15s, dependent: :destroy
	has_many :piece16s, dependent: :destroy
	has_many :piece17s, dependent: :destroy
	has_many :piece18s, dependent: :destroy
	has_many :piece19s, dependent: :destroy
	has_many :piece20s, dependent: :destroy
	has_many :piece21s, dependent: :destroy
	has_many :piece22s, dependent: :destroy
	has_many :piece23s, dependent: :destroy
	has_many :piece24s, dependent: :destroy
	has_many :piece25s, dependent: :destroy	
end
