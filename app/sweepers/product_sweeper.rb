class ProductSweeper < ActionController::Caching::Sweeper
  observe Product

  def sweep(product)
    expire_page product_path(product)
    expire_page "/"
    FileUtils.rm_rf "#{page_cache_directory}/t"
  end
  alias_method :after_create, :sweep
  alias_method :after_update, :sweep
  alias_method :after_destroy, :sweep
end

