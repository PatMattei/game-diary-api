class Post < ApplicationRecord
  belongs_to :user

  has_many :game, dependent: :delete_all
  has_many :comment, dependent: :delete_all
end
