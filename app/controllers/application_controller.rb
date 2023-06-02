class ApplicationController < ActionController::Base

    before_action :authenticate

    private

    def authenticate
        authenticate_or_request_with_http_basic do |username, password|
            username == "deivid"
            password == "123"
        end
    end
end
