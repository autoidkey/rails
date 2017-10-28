Rails.application.routes.draw do
  get 'posts/index'

  get '/' => "home#top" #startpage
  get 'about' => "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
