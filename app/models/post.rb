class Post < ActiveRecord::Base
    validates :title, presence: true, clickbait_title: true
    validates :content, length: {minimum: 20}
    validates :summary, length: {maximum: 100}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
