Rails.application.routes.draw do
  root to: "home#top" #startpage
  get 'posts/index'

  #get '/' => "home#top" #startpage
  get 'about' => "home#about" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'posts/rendJson/:id' => "posts#rendJson"
  #postで受け取る部分を作成
  post 'posts/submit' => "posts#submit"
end