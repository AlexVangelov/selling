module Selling
  class Chargeable < ActiveRecord::Base
    belongs_to :billable
    belongs_to :holdable, polymorphic: true #(resources, resource_types)
  end
end
