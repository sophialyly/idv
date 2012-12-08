   AWS::S3::Base.establish_connection!(
     :access_key_id     => 'AKIAISIGOKLLQ6T5H3NQ',
     :secret_access_key => '8gAD87HsktqMUamIQNZnrs5elIsjkAaYwmfoT'
     :buquet
   )
   
   def buquet
     music_bucket = Bucket.find('idv-nontouch')
   end
     
