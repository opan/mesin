Mesin::Core::Engine.routes.draw do
  devise_for :users, class_name: "Mesin::User", module: :devise
end
