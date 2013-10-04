# -*- encoding : utf-8 -*-
ActiveAdminTest::Application.routes.draw do
  root :to => "home#index"

  devise_for :users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

end
