module Rekognize
  module Client
    module Endpoints

      BASE_URI = 'http://rekognition.com/func/api/'

      def configure_payload(opts={})
        BASE_URI + opts.to_params
      end

      def fire_request(uri)
        RestClient.get(uri)
      end
    end
  end
end
