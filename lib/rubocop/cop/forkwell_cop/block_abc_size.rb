# frozen_string_literal: true
module RuboCop
  module Cop
    module ForkwellCop
      class BlockAbcSize < Cop
        MSG = 'Assignment Branch Condition size for block is too high. [%.4g/%.4g]'

        def on_block(node)
          max = cop_config['Max']
          complexity = complexity(node)
          return unless complexity > max

          add_offense(node, :expression,
                      format(self.class::MSG, complexity, max))
        end

        private

        def complexity(node)
          Metrics::AbcSize.new.send(:complexity, node)
        end
      end
    end
  end
end
