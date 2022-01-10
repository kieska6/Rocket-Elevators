 class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :zxcvbnable,
         :timeoutable,
         :lockable
         has_many :quotes
         belongs_to :user, :optional => true
         
end
