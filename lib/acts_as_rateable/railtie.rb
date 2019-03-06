require 'rails'

module ActsAsRateable
  class Railtie < Rails::Railtie

    initializer "acts_as_rateable.active_record" do |app|
      ActiveSupport.on_load :active_record do
        include ActsAsRateable::Rateable
      end
    end

  end
end
