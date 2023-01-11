class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :password, presence: true, length: { minimum: 6 }
  validates :name, presence: true, length: { maximum: 200 }
  validates :company, presence: true, length: { maximum: 200 }



end
