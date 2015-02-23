class Post < ActiveRecord::Base
  validates :title, :body, :category, presence: true
  validates :title, length: {minimum: 3}
  belongs_to :blogger
end
