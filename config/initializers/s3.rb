CarrierWave.configure do |config|
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     "#{ENV['S3_KEY']}",                        # required
      aws_secret_access_key: "#{ENV['S3_SECRET']}",                        # required
      host:                  "#{ENV['S3_ASSET_URL']}/#{ENV['S3_BUCKET_NAME']}" # optional, defaults to nil
  }
  config.fog_directory  = "#{ENV['S3_BUCKET_NAME']}"                   # required
  config.cache_dir = "#{Rails.root}/tmp/uploads" # To let CarrierWave work on heroku

end