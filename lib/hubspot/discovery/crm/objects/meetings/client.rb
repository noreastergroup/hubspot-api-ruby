require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        module Meetings
          class Client
            include Hubspot::Discovery::BaseModuleClient

            def api_classes
              %i[
                basic
                batch
                gdpr
                public_object
                search
              ].freeze
            end
          end
        end
      end
    end
  end
end
