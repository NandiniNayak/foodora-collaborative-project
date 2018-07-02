Rails.configuration.stripe = {
  publishable_key: ENV['FOODORA_STRIPE_PUBLISHABLE_KEY'],
  secret_key: ENV['FOODORA_STRIPE_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

# config_files = ['foodora_keys.yml']
#
# config_files.each do |file_name|
#   file_path = File.join(Rails.root, 'config', file_name)
#   config_keys = HashWithIndifferentAccess.new(YAML.safe_load(IO.read(file_path)))[Rails.env]
#   config_keys.each do |k, v|
#     ENV[k.upcase] ||= v
#   end
# end
