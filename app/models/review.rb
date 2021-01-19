class Review < ApplicationRecord

    belongs_to :movie
    belongs_to :user

    validates_presence_of :text
    validates_presence_of :rating
end
