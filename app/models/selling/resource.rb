module Selling
  class Resource < ActiveRecord::Base
    belongs_to :resource_type
  end
end
