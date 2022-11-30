class Student < ApplicationRecord
    validates :age, numericality: {greater_than_or_equal_to: 18}
    validates :name, presence: true
    belongs_to :instructor
end
