Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    get "/about", to: "contents/main#about", as: 'about'
    # Root
    root "contents/main#index"
  end
end
