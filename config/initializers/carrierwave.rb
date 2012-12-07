CarrierWave.configure do |config|

     config.fog_credentials = {
       :provider               => 'AWS',       
       :aws_access_key_id      => 'AKIAISIGOKLLQ6T5H3NQ',       
       :aws_secret_access_key  => '8gAD87HsktqMUamIQNZnrs5elIsjkAaYwmfoT'
     }
     
     config.fog_directory  = 'idv-nontouch'                                # required

end