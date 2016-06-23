module Cashier
  class Railtie < ::Rails::Railtie
    config.cashier = Cashier

    initializer "cashier.active_support.cache.instrumentation" do |app|
      ActiveSupport::Cache::Store.instrument = true if ActiveSupport::Cache::Store.method_defined? :instrument=
    end
  end
end
