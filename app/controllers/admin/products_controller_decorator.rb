# -*- encoding : utf-8 -*-
Admin::ProductsController.class_eval do

  cache_sweeper :product_sweeper
end
