   CarrierWave.configure do |config|
     config.fog_credentials = {
       :provider               => 'AWS',                        # required
       :aws_access_key_id      => 'AKIAISIGOKLLQ6T5H3NQ',                        # required
       :aws_secret_access_key  => '8gAD87HsktqMUamIQNZnrs5elIsjkAaYwmfoT',                        # required
       :region                 => 'us-east-1',                   # optional, defaults to 'us-east-1'
       :endpoint               => 'http://idv-nontouch.s3-website-us-east-1.amazonaws.com/ ' # optional, defaults to nil
     }
     config.fog_directory  = 'idv-nontouch'                     # required
   end
   
