CarrierWave.configure do |config|

     # S3 doesn't allow for "+" or "-"...
     CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.]/

     config.fog_credentials = {
       :provider               => 'AWS',       
       :aws_access_key_id      => 'AKIAISIGOKLLQ6T5H3NQ',       
       :aws_secret_access_key  => '8gAD87HsktqMUamIQNZnrs5elIsjkAaYwmfoT',
       :region                 => 'us-east-1',
       :bucket                 => 'idv-nontouch',
       :endpoint               => 'http://idv-nontouch.s3-website-us-east-1.amazonaws.com/'
     }
     
     config.fog_directory  = 'uploads'                                # required

end