module Slug
  extend ActiveSupport::Concern

  included do
    extend FriendlyId
    friendly_id :name, use: :slugged

    field :slug, type: String
  end
end