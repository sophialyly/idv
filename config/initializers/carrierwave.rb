CarrierWave.configure do |config|
     config.fog_directory  = 'idv-nontouch'
     config.storage = :fog
     config.fog_credentials = {
       :provider               => 'AWS',       
       :aws_access_key_id      => 'AKIAISIGOKLLQ6T5H3NQ',       
       :aws_secret_access_key  => '8gAD87HsktqMUamIQNZnrs5elIsjkAaYwmfoT',
       :region                 => 'eu-east-1'
       :endpoint               => 'http://idv-nontouch.s3-website-us-east-1.amazonaws.com/'
       :hostid                 => 'tJIOPcrfMjnwBOJIKDsaHGMNUiUm+URRKtBKHq4Dg9IW2yE1eBYB5hcYJSgkibV5'
     }
     
     
end
