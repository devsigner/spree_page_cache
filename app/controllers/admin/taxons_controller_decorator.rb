# -*- encoding : utf-8 -*-
Admin::TaxonsController.class_eval do
  cache_sweeper :taxon_sweeper
end
