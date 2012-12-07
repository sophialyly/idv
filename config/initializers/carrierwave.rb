CarrierWave.configure do |config|

     # S3 doesn't allow for "+" or "-"...
     CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.]/

     config.root = Rails.root.join('tmp')
     config.cache_dir = 'carrierwave'
     config.s3_access_key_id = ENV['AKIAISIGOKLLQ6T5H3NQ']
     config.s3_secret_access_key = ENV['8gAD87HsktqMUamIQNZnrs5elIsjkAaYwmfoT']
     config.fog_credentials = {
       :provider               => 'AWS',       
       :aws_access_key_id      => 'AKIAISIGOKLLQ6T5H3NQ',       
       :aws_secret_access_key  => '8gAD87HsktqMUamIQNZnrs5elIsjkAaYwmfoT',
       :region                 => 'us-standard'
     }


          if Rails.env.production?
             config.s3_bucket = ENV['idv-nontouch']
          end
end