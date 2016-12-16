class Article < ApplicationRecord
  # AR validations http://edgeguides.rubyonrails.org/active_record_validations.html
  validates :title, presence: true, length: { minimum: 5 }
end
