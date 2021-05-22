class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :rememberable, :trackable  and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  has_many :articles, foreign_key: :author_id, dependent: :destroy
end