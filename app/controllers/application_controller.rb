class ApplicationController < ActionController::Base
    def increment!
        self.value += 1
    end
end
