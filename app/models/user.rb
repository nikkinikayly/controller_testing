class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :first_name, :last_name, :age
  validates :age, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  has_many :bank_accounts, dependent: :destroy
end
