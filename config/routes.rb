Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api' do
    resources :categories do
      get 'todo-by-category', to: 'categories#get_todos_by_category'
    end
    resources :todos
  end
end
