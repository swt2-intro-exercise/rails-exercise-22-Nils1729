class Paper < ApplicationRecord
    validates :title, presence: true, allow_blank: false
end
