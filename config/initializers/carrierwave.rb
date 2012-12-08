   AWS::S3::Base.establish_connection!(
     :access_key_id     => 'AKIAISIGOKLLQ6T5H3NQ',
     :secret_access_key => '8gAD87HsktqMUamIQNZnrs5elIsjkAaYwmfoT'
   )
   
   CarrierWave.configure do |config|
     config.fog_credentials = {
       :provider               => 'AWS',       # required
       :aws_access_key_id      => 'AKIAISIGOKLLQ6T5H3NQ',       # required
       :aws_secret_access_key  => '8gAD87HsktqMUamIQNZnrs5elIsjkAaYwmfoT',       # required
       :region                 => 'us-east-1'  # optional, defaults to 'us-east-1'
     }
     config.fog_directory  = 'idv-nontouch'
   end
   

     
