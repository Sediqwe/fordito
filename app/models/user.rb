class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_one_attached :avatar
    validates :avatar, presence:true
    validates :email, uniqueness: true
    validates :username, length: {minimum:4, maximum:20},uniqueness: true
    
    
end
