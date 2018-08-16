Rails.application.routes.draw do
  get 'packages' => 'packages#index', as: :packages
end
