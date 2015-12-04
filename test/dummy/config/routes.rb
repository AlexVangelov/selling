Rails.application.routes.draw do
  mount_selling_api at: "/selling", sellable: :current_sellable, concern: 'DummyConcern'
end
