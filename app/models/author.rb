class Author < ApplicationRecord
  validates :last_name, presence: true, allow_blank: false

  has_and_belongs_to_many :papers
  
  def name
    "#{first_name} #{last_name}"
  end
end
