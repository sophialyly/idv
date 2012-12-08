   AWS::S3::Base.establish_connection!(
     :access_key_id     => 'AKIAISIGOKLLQ6T5H3NQ',
     :secret_access_key => '8gAD87HsktqMUamIQNZnrs5elIsjkAaYwmfoT'
   )
  
   CarrierWave.configure do |config|
      config.access_key_id     = "AKIAISIGOKLLQ6T5H3NQ" 
      config.secret_access_key = "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" 
      #config.s3_bucket            = "cursame-#{Rails.env}"
      config.bucket            = "idv-nontouch"
      config.storage(Rails.env.test? || Rails.env.development? ? :file : :s3) 
   end

   CarrierWave.configure do |config|
     config.root      = Rails.root.join('tmp')
     config.cache_dir = 'uploads/cached-carrierwave'
   end

   Rails.configuration.middleware.delete('Sass::Plugin::Rack')
   Rails.configuration.middleware.insert_before('Rack::Sendfile', 'Sass::Plugin::Rack')
   Rails.configuration.middleware.insert_before('Rack::Sendfile', 'Rack::Static', :urls => ['/uploads'], :root => 'tmp')
   
