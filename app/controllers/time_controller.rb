require 'date'
class TimeController < ActionController::API
    def index
      x = DateTime.now
      render json: {status: 'SUCCESS', message: 'Loaded all posts', data: x}, status: :ok
    end

end
