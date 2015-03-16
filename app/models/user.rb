class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :pnameform       

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
end
