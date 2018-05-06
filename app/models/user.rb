class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :cars, dependent: :destroy

  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
end