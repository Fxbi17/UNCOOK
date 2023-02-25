class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :menu, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :delivery

  validates :email, presence: true
  # validates :login, :email, presence: true
  # validates :email, format: { with: /\A.*@.*\.com\z/ }
  # validates :role, presence: true

  acts_as_favoritor

  def menu_dishes_not_positionned
    menu.menu_dishes.where(position: nil)
  end

  def menu_dishes_positionned
    menu.menu_dishes.where.not(position: nil)
  end
end
