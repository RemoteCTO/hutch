require 'multi_json'
require 'active_support/core_ext/hash/indifferent_access'

module Hutch
  module Serializers
    class JSON

      def self.encode(payload)
        ::JSON.dump(payload)
      end

      def self.decode(payload)
        ::MultiJson.load(payload).with_indifferent_access
      end

      def self.binary? ; false ; end

      Hutch::Serializers.register('application/json', self)

    end
  end
end
