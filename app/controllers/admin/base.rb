class Admin::Base < ApplicationController
  layout 'admin'
  before_action :basic
  private
    def basic
      authenticate_or_request_with_http_basic do |user, pass|
        #user == CONFIG['admin']['user'] && pass == CONFIG['admin']['pass']
        user == "admin" && pass == "minad"
      end
    end
  end
