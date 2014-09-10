require 'sidekiq'
require 'sidekiq/web'

Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [user, password] == ["mdarby", "sidekiq"]
end

if Rails.env.production?
  Sidekiq.configure_server do |config|
    config.redis = { :url => 'redis://172.17.0.26:49154/12', :namespace => 'crb_jobs' }

  end
end
