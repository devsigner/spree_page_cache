# -*- encoding : utf-8 -*-
class TaxonSweeper < ActionController::Caching::Sweeper
  observe Taxon

  def sweep(product)
    expire_page "/"
    FileUtils.rm_rf "#{page_cache_directory}/products"
    FileUtils.rm_rf "#{page_cache_directory}/t"
  end
  alias_method :after_create, :sweep
  alias_method :after_update, :sweep
  alias_method :after_destroy, :sweep
end

