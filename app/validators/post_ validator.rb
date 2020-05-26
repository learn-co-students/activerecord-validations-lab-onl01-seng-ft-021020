class PostValidator < ActiveModel::Validator
    def validate(record)


      unless
        record.title.include? ("Won't Believe") || 
        record.title.include? ("Secret") ||
        (record.title.include? ("Top ") && record.title.count("0-9") > 0) ||
        record.title.include? ("Guess") ||

        record.errors[:post] << "No Clickbait."
      end


    end
  end