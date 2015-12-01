module Selling
  class Config < ActiveRecord::Base
    belongs_to :sellable
  end
end
