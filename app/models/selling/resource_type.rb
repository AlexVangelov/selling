module Selling
  class ResourceType < ActiveRecord::Base
    has_many :resources
  end
end
