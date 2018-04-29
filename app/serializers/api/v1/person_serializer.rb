class Api::V1::PersonSerializer < Api::V1Serializer
  attribute :type do 
    :person
  end
  
  attributes :id, :name, :description, :slug
end