class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :clickbaity
  

  def clickbaity
    return if title.nil?  
    unless title.match(/Won't Believe/i) || 
        title.match(/Secret/i) ||
        title.match(/Top \d+/i) ||
        title.match(/Guess/i)
      errors.add(:title, "Not sufficiently clickbaity")
    end
  end
end
