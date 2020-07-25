class ApplicationController < ActionController::Base
    def hello
        render html: "Welcome"
    end
end
