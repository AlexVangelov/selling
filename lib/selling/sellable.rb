module Selling
  module Sellable
    extend ActiveSupport::Concern
    
    module ClassMethods
      def has_sellings(options={})
        has_one   :selling_config, class_name: 'Selling::Config', foreign_key: :master_id
        has_many  :selling_origins, class_name: 'Billing::Origin', foreign_key: :master_id
        has_many  :selling_operators, class_name: 'Billing::Operator', foreign_key: :master_id
        has_many  :selling_resource_types, class_name: 'Selling::ResourceType', foreign_key: :master_id
        has_many  :selling_resources, class_name: 'Selling::Resource', foreign_key: :master_id
        has_many  :selling_payment_types, class_name: 'Billing::PaymentType', foreign_key: :master_id
        has_many  :selling_tax_groups, class_name: 'Billing::TaxGroup', foreign_key: :master_id
      end
    end

  end
end
ActiveRecord::Base.send :include, Selling::Sellable