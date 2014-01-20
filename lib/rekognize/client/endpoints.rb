module Rekognize
  module Client
    module Endpoints
      def configure_payload(opts={})
        base_uri + opts.to_params
      end

      def fire_request(uri)
        RestClient.get(uri)
      end
    end
  end
end
