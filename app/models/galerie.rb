class Galerie < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_tags, against: :tags
end
