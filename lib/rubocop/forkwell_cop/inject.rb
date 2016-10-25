# frozen_string_literal: true
module RuboCop
  module ForkwellCop
    module Inject
      DEFAULT_FILE = File.expand_path(
        '../../../../config/cops.yml', __FILE__
      ).freeze

      def self.defaults!
        path = File.absolute_path(DEFAULT_FILE)
        hash = ConfigLoader.send(:load_yaml_configuration, path)
        config = Config.new(hash, path)
        config = ConfigLoader.merge_with_default(config, path)
        ConfigLoader.instance_variable_set(:@default_configuration, config)
      end
    end
  end
end
