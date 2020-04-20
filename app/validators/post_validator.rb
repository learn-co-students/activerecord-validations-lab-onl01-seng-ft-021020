class PostValidator < ActiveModel::Validator
    def validate(record)
        if !record.title.nil?
            unless record.title.include?("You Won't" || "Secret" || "Top" || "Guess")
                record.errors[:title] << "That is not a clickbait title!"
            end
        end
    end
end