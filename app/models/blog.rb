class Blog < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	has_many :tags, dependent: :destroy
end
