CarrierWave.configure do |config|
  config.storage                             = :gcloud
  config.gcloud_bucket                       = ENV.fetch('GCLOUD_BUCKET')
  config.gcloud_bucket_is_public             = false
  config.gcloud_authenticated_url_expiration = 600

  config.gcloud_attributes = {
    expires: 600
  }

  config.gcloud_credentials = {
    gcloud_project: ENV.fetch('GCLOUD_PROJECT'),
    gcloud_keyfile: ENV.fetch('GCLOUD_PATH_JSON')
  }
end
