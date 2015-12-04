module ActionDispatch::Routing
  class Mapper
    def mount_selling_api(options = {})
      mapping = Selling.map(options)
      mount Selling::Engine, at: options[:at], as: options[:as] || :selling
      # get "#{mapping.mount_point}/:device_uuid", to: "extface/handler#pull", as: :extface_device_pull
      # get "#{mapping.mount_point}/jobs/:id", to: "extface/jobs#show", as: :extface_job
    end
  end
end