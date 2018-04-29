class OrganizationSerializer < ActiveModel::Serializer
  attribute :type do 
    :organization
  end

  attributes :id, :name, :slug
end
