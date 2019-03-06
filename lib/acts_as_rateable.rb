require 'active_record'
require 'acts_as_rateable/rateable'
require 'app/models/rate'
require 'app/models/rating'

module ActsAsRateable
  autoload :Rateable,   'acts_as_rateable/rateable'
  autoload :RateableLib,  'acts_as_rateable/rateable_lib'
  autoload :RateableScopes, 'acts_as_rateable/rateable_scopes'

  def self.setup
    @configuration ||= Configuration.new
    yield @configuration if block_given?
  end

  def self.method_missing(method_name, *args, &block)
    if method_name == :custom_parent_classes=
      ActiveSupport::Deprecation.warn("Setting custom parent classes is deprecated and will be removed in future versions.")
    end
    @configuration.respond_to?(method_name) ?
        @configuration.send(method_name, *args, &block) : super
  end

  class Configuration
    attr_accessor :custom_parent_classes

    def initialize
      @custom_parent_classes = []
    end
  end

  setup

  require 'acts_as_rateable/railtie' if defined?(Rails) && Rails::VERSION::MAJOR >= 3
end
