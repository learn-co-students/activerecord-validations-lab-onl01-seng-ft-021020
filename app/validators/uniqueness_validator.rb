class UniquenessValidator < ActiveModel::Validator
 
  def validate(record)
    unless record.name.unique?
      record.errors[:name] << "Someone has that name"
    end
  end
end