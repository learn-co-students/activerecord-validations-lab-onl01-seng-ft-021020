class Post < ActiveRecord::Base
    include ActiveModel::Validations
   # validates_with PostValidator
    
    validates :title, presence: true
    validate :is_clickbait
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }

    validates :category, inclusion: { :in => ['Fiction','Non-Fiction'] }

    def is_clickbait
      
        if(title.nil?)
            errors.add(:title, "can't be nil")
            return
        end
        if(title == '')
            errors.add(:title, "can't be blank")
            return
        end
        
        if( !title.include?("Believe")&&
            !title.include?("Secret")&&
            !title.include?("Top")&&
            !title.include?("Guess"))
            errors.add(:title, "must be clickbait")
        end

    end





end
