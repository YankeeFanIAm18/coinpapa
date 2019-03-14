class ApplicationController < ActionController::Base
  
  before_action :basic
  
  private def basic
    #if ENV['RAILS_ENV'] != 'production' ||
    #   ENV['ANTENNA_PASS_LOCK'] == '1' then
      authenticate_or_request_with_http_basic do |user, pass|
        #user == CONFIG['admin']['user'] && pass == CONFIG['admin']['pass']
        user == "admin" && pass == "minad"
      end
    #end
  end

end