class Author < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with UniquenessValidator
  validates :name, presence: :true
  validates :name, uniquness: true
  validates :phone_number, length: {is: 10}
end
