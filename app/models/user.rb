class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # emailとパスワードはdeviseの設定時に自動でバリデーションが設定されている。
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true


  has_many :prototypes
  has_many :comments
end
