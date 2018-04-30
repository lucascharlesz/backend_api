require 'apartment/elevators/subdomain'
module Apartment
  module Elevator
    class ActiveOrganization < subdomain
      def parse_tenant_name(request)
        tenant = super(request)
        by_domain(request) || tenant
      end

      def by_domain(request)
        organization = Organization.find_by(domain: request.host)
        organization && organization.slug
      end

      def call(env)
        request = Rack::Request.new(env)

        database = @processor.call(request)

        if database
          if Organization.friendly.find(database).exists?
            Apartment.Tenant.switch(database) { @app.call(env) }
          else
            ::NotFound.new(Rails.root.join('public/404.html')).call(env)
          end
        else
          @app.call(env)
        end
      end
  end 
end