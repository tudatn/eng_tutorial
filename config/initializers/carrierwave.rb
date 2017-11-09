CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id:     'GOOGYWB53C7IH2RNJ7GG',
    google_storage_secret_access_key: 'kIRXrpOs+XeoNCKAqMbT75xmVE1SLAOrVTHfI5t4'
  }
  config.fog_directory = 'geobox1'
end
