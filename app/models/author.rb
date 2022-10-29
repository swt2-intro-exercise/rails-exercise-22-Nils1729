class Author < ApplicationRecord
  validates :last_name, presence: true, allow_blank: false
  
  def name
    "#{first_name} #{last_name}"
  end
end
