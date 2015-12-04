require "selling/engine"
require "selling/sellable"
require "selling/routes"
require "selling/mapping"

module Selling
  mattr_reader :mapping
  
  class << self
    def setup
      yield self
    end

    def map(options)
      @@mapping = Selling::Mapping.new(options)
    end
  end
end
