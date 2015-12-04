module Selling
  class Mapping
    attr_reader :sellable, :concern
    def initialize(options)
      
      @sellable = options[:sellable] || :sellable

      @concern = options[:concern].to_s.constantize if options[:concern].present?
    end
  end
end