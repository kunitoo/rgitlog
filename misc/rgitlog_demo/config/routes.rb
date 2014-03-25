RgitlogDemo::Application.routes.draw do
  mount Rgitlog::Engine, at: '/rgitlog'
  root to: 'rgitlog/rgitlog#index'
end
