class Author < ApplicationRecord
    has_and_belongs_to_many :papers
    validates :last_name, presence: true
    def name
            first_name.concat(" ", last_name)
    end
end
