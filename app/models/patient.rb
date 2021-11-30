class Patient < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search, against: %i[first_name last_name dob phone], using: { tsearch: { prefix: true}}

  has_one :address
  accepts_nested_attributes_for :address
end
