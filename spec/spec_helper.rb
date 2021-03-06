require 'bundler/setup'
require 'ammeter/init'
require 'rails'

require 'action_view'
require './spec/support/samples/application_controller'

Bundler.require

require './spec/support/samples/active_model'
require './spec/support/samples/active_record'
require './spec/support/samples/application_helper'
require './spec/support/samples/decorator'
require './spec/support/samples/decorator_with_allows'
require './spec/support/samples/decorator_with_multiple_allows'
require './spec/support/samples/decorator_with_application_helper'
require './spec/support/samples/decorator_with_denies'
require './spec/support/samples/decorator_with_denies_all'
require './spec/support/samples/decorator_with_special_methods'
require './spec/support/samples/namespaced_product'
require './spec/support/samples/namespaced_product_decorator'
require './spec/support/samples/non_active_model_product'
require './spec/support/samples/product'
require './spec/support/samples/product_decorator'
require './spec/support/samples/sequel_product'
require './spec/support/samples/specific_product_decorator'
require './spec/support/samples/some_thing'
require './spec/support/samples/some_thing_decorator'
require './spec/support/samples/widget'
require './spec/support/samples/widget_decorator'

module ActionController
  class Base
    Draper::System.setup(self)
  end
end

module ActiveRecord
  class Relation
  end
end
