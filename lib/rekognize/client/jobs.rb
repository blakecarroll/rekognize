module Rekognize
  module Client
    module Jobs

      def face_detect(opts={})
        opts.assert_valid_keys(:jobs, :urls)
        fire_request configure_payload(opts)
      end

    end
  end
end
