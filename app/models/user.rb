class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :pnameform  

  has_many :seds

  has_many :scripts 
       
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
