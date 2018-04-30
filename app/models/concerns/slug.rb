module Slug
  extend ActiveSupport::Concern

  included do
    extend FriendlyId
    friendly_id :name, use: :slugged

    attribute :slug, type: String
  end
end