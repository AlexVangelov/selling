module Selling
  class Rate < ActiveRecord::Base
    belongs_to :resource_type
    belongs_to :seazon
    belongs_to :daytime_zone
  end
end
