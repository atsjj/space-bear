class CategoriesController < JSONAPI::ResourceController
  skip_before_action :ensure_valid_accept_media_type
end
