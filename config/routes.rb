Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }

  devise_scope :user do
    authenticated :user do
      root to: 'users#landing'
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  namespace :api do
    get 'users/info'
  end

  #NOTHING BELOW THIS SECTION
  get '*unmatched_route', to: 'users#landing'
  #NOTHING BELOW THIS LINE
end
