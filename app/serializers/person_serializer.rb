class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
end