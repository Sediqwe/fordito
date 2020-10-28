class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
<<<<<<< HEAD
 
=======
  self.table_name = "users"
>>>>>>> parent of dff01e8... megdöglött
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_one_attached :avatar
    validates :email, uniqueness: true
end
