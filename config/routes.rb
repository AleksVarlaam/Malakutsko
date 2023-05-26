Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    get "/about", to: "contents/main#about", as: 'about'
    get "/contacts", to: "contents/main#contacts", as: 'contacts'
    # Root
    root "contents/main#index"
  end
end
