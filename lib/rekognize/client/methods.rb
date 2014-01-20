module Rekognize
  module Client
    class Base

      def self.mattr_reader(*symbols)
        symbols.each do |sym|
          raise NameError.new('invalid attribute name') unless sym =~ /^[_A-Za-z]\w*$/
          class_eval %{
            @@#{sym} = nil unless defined? @@#{sym}
            def #{sym}
              @@#{sym}
            end
          }
        end
      end

    end
  end
end
