# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Gamez::Application.initialize!

ENV['RECAPTCHA_PUBLIC_KEY'] = '6Lfn-88SAAAAAF-uhHY6i_Vt2u8hVA7llv6lCn24'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6Lfn-88SAAAAAEE-8No_RCh1Z3IPbMTFpgVzv_re'