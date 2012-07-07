Spree::Core::Engine.routes.prepend do

  namespace :admin do
    resource :feature_settings
  end

end