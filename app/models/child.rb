class Child < ApplicationRecord
    has_many :chores
    has_many :tasks, :through => :chores

    validates :first_name, presence: true
    validates :last_name, presence: true

    scope :alphabetical, -> { order('last_name, first_name') }
    scope :active, -> { where('active = ?', true) }

    def name
        first_name + " " + last_name
    end

end
