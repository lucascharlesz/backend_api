class ApplicationRecord < ActiveRecord::Base
  # before_action :set_tenant_target
  
  self.abstract_class = true

  include RailsMultitenant::MultitenantModel
  multitenant_on_model :organization

  private

  # def set_tenant_target

  # end
end
