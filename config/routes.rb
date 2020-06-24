Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api' do
    resources :catefories do
      get 'todo-by-catefory', to: 'catefories#todo_by_catefory'
    end
    resources :todos
  end
end
