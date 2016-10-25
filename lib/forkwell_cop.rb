# frozen_string_literal: true
require 'forkwell_cop/version'

require 'rubocop'
require 'rubocop/forkwell_cop/inject'

RuboCop::ForkwellCop::Inject.defaults!

# cops
require 'rubocop/cop/forkwell_cop/block_abc_size'
