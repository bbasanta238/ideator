class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, :uniqueness => false
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:Trackable

def password_required?
  false
end

end
