module DummyConcern
  extend ActiveSupport::Concern

  included do
  end
  
  private
    def current_sellable
      Sellable.first
    end
end