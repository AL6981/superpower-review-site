class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :superpowers
  has_many :reviews

  def admin?
    role == "admin"
  end

  def member?
    role == "member"
  end
end
