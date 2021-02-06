class Chore < ApplicationRecord
    has_one :child
    has_one :task
end
