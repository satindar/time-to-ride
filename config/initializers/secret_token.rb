def secret_token_generator
  if Rails.env.development? || Rails.env.test?
    'x' * 30
  else
    ENV['SECRET_TOKEN']
  end
end

TimeToRide::Application.config.secret_key_base = secret_token_generator