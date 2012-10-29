Rails.application.routes.draw do
  match 'admin', :to => 'admin#home'
end