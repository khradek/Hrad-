class Play < ActiveRecord::Base

	def fullname
  	fullname = "#{piece1} #{piece2} #{piece3} #{piece4} #{piece5} #{piece6} #{piece7} #{piece8} #{piece9} #{piece10} #{piece11} #{piece12} #{piece13} #{piece14} #{piece15} #{piece16} #{piece17} #{piece18} #{piece19} #{piece20} #{piece21} #{piece22} #{piece23} #{piece24} #{piece25}"
  end	

  belongs_to :sed
  belongs_to :user

  has_many :piece1s
  has_many :piece2s
  has_many :piece3s
  has_many :piece4s
  has_many :piece5s
  has_many :piece6s
  has_many :piece7s
  has_many :piece8s
  has_many :piece9s
  has_many :piece10s
  has_many :piece11s
  has_many :piece12s
  has_many :piece13s
  has_many :piece14s
  has_many :piece15s
  has_many :piece16s
  has_many :piece17s
  has_many :piece18s
  has_many :piece19s
  has_many :piece20s
  has_many :piece21s
  has_many :piece22s
  has_many :piece23s
  has_many :piece24s
  has_many :piece25s
end
