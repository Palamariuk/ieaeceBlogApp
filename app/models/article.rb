class Article < ApplicationRecord
  include Visible
  belongs_to :author, class_name: 'Account'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  scope :ordered, ->(direction = :desc) { order(created_at: direction) }
  scope :with_authors, -> { includes(:author) }
  scope :search, ->(query) do
    return if query.blank?

    where('title LIKE ? OR title LIKE ?', "#{query.squish}%", "% #{query.squish}%")
  end
end
